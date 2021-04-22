.PHONY: version
version:
	@python3 -c 'from pkg_resources import *; print(require("jira-offline")[0].version)'
