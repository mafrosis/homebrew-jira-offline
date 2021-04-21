# homebrew-jira-offline

Maybe one day this software will have enough stars that homebrew-core permits entry .. but at least
this way we can use wheels.


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
