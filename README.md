# homebrew-jira-offline

Maybe one day this software will have enough stars that homebrew-core permits entry .. but at least
this way we can use wheels.


## Writing the Formula file

The file [`jira-offline.rb`](./Formula/jira-offline.rb) breaks the norm of Homebrew formulas by
packaging files and not raw source code. Each `resource` stanza defines a wheel dependency (if one
exists), and the code in the `def install` section installs Python wheels into the created
virtualenv.

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
