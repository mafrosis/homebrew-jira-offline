# homebrew-jira-offline

Maybe one day this software will have enough stars that homebrew-core permits entry .. but at least
this way we can use wheels.


## This repo is a custom tap

https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md

The following command will `tap` this Github repo, cloning the `default` branch to a local directory
(here shown with the `--verbose` flag):

```
> brew tap -v mafrosis/jira-offline
==> Tapping mafrosis/jira-offline
git clone https://github.com/mafrosis/homebrew-jira-offline /usr/local/Homebrew/Library/Taps/mafrosis/homebrew-jira-offline --origin=origin
Cloning into '/usr/local/Homebrew/Library/Taps/mafrosis/homebrew-jira-offline'...
remote: Enumerating objects: 44, done.
remote: Counting objects: 100% (44/44), done.
remote: Compressing objects: 100% (22/22), done.
remote: Total 44 (delta 16), reused 38 (delta 13), pack-reused 0
Unpacking objects: 100% (44/44), done.
Tapped 1 formula (75 files, 73.5KB).
```

Given Homebrew simply clones this git repo, there is an opportunity to test from a different branch:

```
> cd /usr/local/Homebrew/Library/Taps/mafrosis/homebrew-jira-offline
> git checkout testing
Switched to branch 'testing'
Your branch is up to date with 'origin/testing'.
> git fetch
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (1/1), done.
remote: Total 3 (delta 2), reused 3 (delta 2), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/mafrosis/homebrew-jira-offline
 + 6d94d8b...ed1a7a7 testing    -> origin/testing  (forced update)
> git reset --hard origin/testing
HEAD is now at ed1a7a7 [feature] README on testing new homebrew releases
```

At this point, `brew install` will execute `Formula/jira-offline.rb` on the `testing` branch of
this repo.

    brew install mafrosis/jira-offline


## Creating a new release

Assuming the release is version `0.2.4`:

First update the actual release tarball URL and sha256:

```
curl -L https://github.com/mafrosis/jira-offline/releases/download/0.2.4/jira-offline-0.2.4.tar.gz | sha256sum
```

Next update the top of `formula.py` to modify any dependencies. One can check the git history between
release tags for changes to the `requirements.txt`:

```
git ls 0.2.3..0.2.4 requirements.txt
```

Now, run `formula.py` and paste the output into `Formula/jira-offline.rb`.

```
source venv/bin/activate
pip install -U -r requirements.txt
./formula.py | pbcopy
```

Commit all changes and push to the `testing` branch. This branch can be tested before merging into
`main`.

```
git commit -m '[release] 0.2.4'
git push origin testing
```

Post merge to `main`, tag the release commit such that the `release` pipeline is triggered.

```
git tag 0.2.4
git push --tags
```


## Notes on the Formula file

The file [`jira-offline.rb`](./Formula/jira-offline.rb) breaks the norm of Homebrew formulas by
packaging binaries and not raw source code. Each `resource` stanza defines a wheel dependency (if one
exists), and the code in the `def install` section installs Python wheels into the created
virtualenv.

Notably, this does _not_ apply to the `jira-offline` source - Homebrew fails to install if this is
a wheel. The `.tar.gz` egg is used instead.

A helper script is included - [`formula.py`](./formula.py) - which helps to generate these
`resource` stanzas.

A dict at the top of `./formula.py` defines the mapping of requirement -> wheel binary filename. I
couldn't figure out a simple way to dynamically create this mapping, so took the obvious approach
of copy-pasting the output of `pip install`, and formatting it into a dict.

Running this script will print the current dependencies as Homebrew wheel resource stanzas to paste
into the formula code.

**NB: If the dependencies change, then formula.py must also change!**


## Handy one-liners

Debug install from this tap:

    brew install --verbose --debug mafrosis/homebrew-jira-offline/jira-offline

Tap and install:

    brew tap mafrosis/jira-offline
    brew install jira-offline
