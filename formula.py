#! /usr/bin/env python

import contextlib
import itertools
import logging
import shutil
import sys
import tempfile

import pipdeptree
import requests


logger = logging.getLogger('formula')
logger.setLevel(logging.INFO)
logger.addHandler(logging.StreamHandler())


DEP_MAPPING = {
    'catalina': {
        'arrow==0.15.8': 'arrow-0.15.8-py2.py3-none-any.whl',
        'certifi==2021.5.30': 'certifi-2021.5.30-py2.py3-none-any.whl',
        'cffi==1.14.6': 'cffi-1.14.6-cp38-cp38-macosx_10_9_x86_64.whl',
        'chardet==4.0.0': 'chardet-4.0.0-py2.py3-none-any.whl',
        'click==8.0.1': 'click-8.0.1-py3-none-any.whl',
        'cryptography==3.4.7': 'cryptography-3.4.7-cp36-abi3-macosx_10_10_x86_64.whl',
        'python-dateutil==2.8.2': 'python_dateutil-2.8.2-py2.py3-none-any.whl',
        'dictdiffer-jira-offline-fork==0.0.1': 'dictdiffer_jira_offline_fork-0.0.1-py2.py3-none-any.whl',
        'feather-format==0.4.1': 'feather-format-0.4.1.tar.gz',
        'idna==2.10': 'idna-2.10-py2.py3-none-any.whl',
        'moz-sql-parser==4.21.21059': 'moz-sql-parser-4.21.21059.tar.gz',
        'mo-dots==4.19.21059': 'mo-dots-4.19.21059.tar.gz',
        'mo-future==3.147.20327': 'mo-future-3.147.20327.tar.gz',
        'mo-logs==4.20.21059': 'mo-logs-4.20.21059.tar.gz',
        'mo-imports==3.149.20327': 'mo-imports-3.149.20327.tar.gz',
        'mo-kwargs==3.93.20259': 'mo-kwargs-3.93.20259.tar.gz',
        'mypy-extensions==0.4.3': 'mypy_extensions-0.4.3-py2.py3-none-any.whl',
        'numpy==1.20.1': 'numpy-1.20.1-cp38-cp38-macosx_10_9_x86_64.whl',
        'oauthlib==3.1.0': 'oauthlib-3.1.0-py2.py3-none-any.whl',
        'pandas==1.2.3': 'pandas-1.2.3-cp38-cp38-macosx_10_9_x86_64.whl',
        'ProxyTypes==0.10.0': 'ProxyTypes-0.10.0-py3-none-any.whl',
        'pyarrow==3.0.0': 'pyarrow-3.0.0-cp38-cp38-macosx_10_13_x86_64.whl',
        'pycparser==2.20': 'pycparser-2.20-py2.py3-none-any.whl',
        'python-dateutil==2.8.1': 'python_dateutil-2.8.1-py2.py3-none-any.whl',
        'pytz==2021.1': 'pytz-2021.1-py2.py3-none-any.whl',
        'requests==2.25.1': 'requests-2.25.1-py2.py3-none-any.whl',
        'requests-oauthlib==1.3.0': 'requests_oauthlib-1.3.0-py2.py3-none-any.whl',
        'six==1.16.0': 'six-1.16.0-py2.py3-none-any.whl',
        'tabulate==0.8.9': 'tabulate-0.8.9-py3-none-any.whl',
        'tqdm==4.49.0': 'tqdm-4.49.0-py2.py3-none-any.whl',
        'typing-extensions==3.10.0.0': 'typing_extensions-3.10.0.0-py3-none-any.whl',
        'typing-inspect==0.6.0': 'typing_inspect-0.6.0-py3-none-any.whl',
        'tzlocal==2.1': 'tzlocal-2.1-py2.py3-none-any.whl',
        'urllib3==1.26.6': 'urllib3-1.26.6-py2.py3-none-any.whl',
    }
}


flatten = itertools.chain.from_iterable


def main():
    pkgs = pipdeptree.get_installed_distributions()
    tree = pipdeptree.PackageDAG.from_pkgs(pkgs).filter({'jira-offline'}, None)
    deps = get_unique_dependencies(tree)

    for name, version in sorted(deps.items()):
        print(f'# {name}=={version}')

        resp = requests.get(f'https://pypi.org/pypi/{name}/{version}/json')

        binary = DEP_MAPPING['catalina'][f'{name}=={version}']

        release = next(iter([
            r for r in resp.json()['releases'][version]
            if r['filename'] == binary
        ]))

        if release is None:
            logger.critical('No valid release for %s==%s', name, version)
            sys.exit(1)

        print_resource_stanza(name, release['url'], release['digests']['sha256'])


def print_resource_stanza(name, url, sha):
    print(f'''resource "{name}" do
  url "{url}"
  sha256 "{sha}"
end
''')


def get_unique_dependencies(tree):
    def uniq(iterable):
        seen = set()
        for x in iterable:
            if x in seen:
                continue
            seen.add(x)
            yield x

    def aux(node):
        if getattr(node, 'installed_version', False):
            result = [(node.project_name, node.installed_version)]
        else:
            result = []

        children = [aux(c) for c in tree.get_children(node.key)]
        result += list(flatten(children))
        return result

    return dict(uniq(flatten([aux(p) for p in tree.keys()])))


@contextlib.contextmanager
def make_tmpdir():
    temp_dir = tempfile.mkdtemp()
    try:
        yield temp_dir
    except Exception as e:
        raise e
    finally:
        shutil.rmtree(temp_dir)


if __name__ == '__main__':
    main()
