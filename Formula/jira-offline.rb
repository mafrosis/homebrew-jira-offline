class JiraOffline < Formula
  include Language::Python::Virtualenv

  desc "Git-like CLI for using Jira offline"
  homepage "https://pypi.org/project/jira-offline"
  url "https://github.com/mafrosis/jira-offline/releases/download/0.2.5/jira-offline-0.2.5.tar.gz"
  sha256 "d95bd3a4a0c2be1efbd10dce368487e9170726f3e16d542615d9d33037d745bd"
  license "MIT"

  depends_on "python@3.8"

  # ProxyTypes==0.10.0
  resource "ProxyTypes" do
    url "https://files.pythonhosted.org/packages/1e/d7/e682be643717d9400470f374cf53e1586a834913a79d96ea54d2323c711c/ProxyTypes-0.10.0-py3-none-any.whl"
    sha256 "f3bf78debafe15d8ccb31a0c909f820408bb678532a8be8bf737ddd50c03f298"
  end

  # arrow==0.15.8
  resource "arrow" do
    url "https://files.pythonhosted.org/packages/40/2a/9dd6a391e7813b9908b4dcaec7df0f2d365cfc0f071799f2ae5147707923/arrow-0.15.8-py2.py3-none-any.whl"
    sha256 "271b8e05174d48e50324ed0dc5d74796c839c7e579a4f21cf1a7394665f9e94f"
  end

  # certifi==2021.5.30
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/05/1b/0a0dece0e8aa492a6ec9e4ad2fe366b511558cdc73fd3abc82ba7348e875/certifi-2021.5.30-py2.py3-none-any.whl"
    sha256 "50b1e4f8446b06f41be7dd6338db18e0990601dce795c2b1686458aa7e8fa7d8"
  end

  # cffi==1.14.6
  resource "cffi" do
    url "https://files.pythonhosted.org/packages/ca/e1/015e2ae23230d9de8597e9ad8c0b81d5ac181f08f2e6e75774b7f5301677/cffi-1.14.6-cp38-cp38-macosx_10_9_x86_64.whl"
    sha256 "ba6f2b3f452e150945d58f4badd92310449876c4c954836cfb1803bdd7b422f0"
  end

  # chardet==4.0.0
  resource "chardet" do
    url "https://files.pythonhosted.org/packages/19/c7/fa589626997dd07bd87d9269342ccb74b1720384a4d739a1872bd84fbe68/chardet-4.0.0-py2.py3-none-any.whl"
    sha256 "f864054d66fd9118f2e67044ac8981a54775ec5b67aed0441892edb553d21da5"
  end

  # click==8.0.1
  resource "click" do
    url "https://files.pythonhosted.org/packages/76/0a/b6c5f311e32aeb3b406e03c079ade51e905ea630fc19d1262a46249c1c86/click-8.0.1-py3-none-any.whl"
    sha256 "fba402a4a47334742d782209a7c79bc448911afe1149d07bdabdf480b3e2f4b6"
  end

  # cryptography==3.4.7
  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/8a/1d/b6ea7bf3ef251ff8ea0025cb952e898027097991c828140c8befd941e6fd/cryptography-3.4.7-cp36-abi3-macosx_10_10_x86_64.whl"
    sha256 "3d8427734c781ea5f1b41d6589c293089704d4759e34597dce91014ac125aad1"
  end

  # dictdiffer-jira-offline-fork==0.0.1
  resource "dictdiffer-jira-offline-fork" do
    url "https://files.pythonhosted.org/packages/b3/15/225d52734e25e20dbbeb6dff8e450ca87e2c8d110a8604abd547a44a273e/dictdiffer_jira_offline_fork-0.0.1-py2.py3-none-any.whl"
    sha256 "654a77a275e714d212607e6e3c57f24f32e60b10e318aeea378780d30b8b0d7b"
  end

  # feather-format==0.4.1
  resource "feather-format" do
    url "https://files.pythonhosted.org/packages/67/e8/ee99f142f19d35588501943510f8217f9dd77184574b0c933c53218e0f19/feather-format-0.4.1.tar.gz"
    sha256 "45f67e3745d394d4f160ca6d636bbfd4f8b68d01199dc1649b6e487d3e878903"
  end

  # idna==2.10
  resource "idna" do
    url "https://files.pythonhosted.org/packages/a2/38/928ddce2273eaa564f6f50de919327bf3a00f091b5baba8dfa9460f3a8a8/idna-2.10-py2.py3-none-any.whl"
    sha256 "b97d804b1e9b523befed77c48dacec60e6dcb0b5391d57af6a65a312a90648c0"
  end

  # mo-dots==4.19.21059
  resource "mo-dots" do
    url "https://files.pythonhosted.org/packages/6d/52/3be9b28667ddb4076be68ce242b7b0bdef5d68304993253b7ea72edc58e1/mo-dots-4.19.21059.tar.gz"
    sha256 "880e61a2db83e7806b0a7c89adf936a6947a0f4925eac9088f4dfd694fe15ab6"
  end

  # mo-future==3.147.20327
  resource "mo-future" do
    url "https://files.pythonhosted.org/packages/74/4e/ea41d847475228c72326d05b5c8f89ea3332637eefa3da6413a5b645b5d0/mo-future-3.147.20327.tar.gz"
    sha256 "4aafcf859e4657bc11b04ee9791321e2d44702604ae01cac7c412468cb6a513f"
  end

  # mo-imports==3.149.20327
  resource "mo-imports" do
    url "https://files.pythonhosted.org/packages/e2/8a/52ec0e84bc8837d19da57ea9c1644c75b513d4f7aab7b3e24a437a4a047b/mo-imports-3.149.20327.tar.gz"
    sha256 "32e3dc720c84765224d29ed7e9d6972a369d41d756e6f26ddb5b7aa01241331d"
  end

  # mo-kwargs==3.93.20259
  resource "mo-kwargs" do
    url "https://files.pythonhosted.org/packages/aa/af/d9080b47778a6c02e6614f62306452fef99a1ad62937a9ec10c4461c9c1d/mo-kwargs-3.93.20259.tar.gz"
    sha256 "c7802ad3211f25536a73ae5775efa398ca59f5b23551957f79e53d4ccf179d2e"
  end

  # mo-logs==4.20.21059
  resource "mo-logs" do
    url "https://files.pythonhosted.org/packages/43/b3/7c805cda965aec98767b79290dd77464554f6dd7466da1001f64625c7174/mo-logs-4.20.21059.tar.gz"
    sha256 "5f008428610042c9104ca87ee4e85602a030be2597ecc760aa163e2d6d51bfce"
  end

  # moz-sql-parser==4.21.21059
  resource "moz-sql-parser" do
    url "https://files.pythonhosted.org/packages/11/60/2160c92076ba48b505bb14a0bd2651df066f7dddb82954ed0a635619a688/moz-sql-parser-4.21.21059.tar.gz"
    sha256 "54bb667989e503a2d09718a769c1f3caaa5338f8fddc20e87dfd2591c3cbfa3e"
  end

  # mypy-extensions==0.4.3
  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/5c/eb/975c7c080f3223a5cdaff09612f3a5221e4ba534f7039db34c35d95fa6a5/mypy_extensions-0.4.3-py2.py3-none-any.whl"
    sha256 "090fedd75945a69ae91ce1303b5824f428daf5a028d2f6ab8a299250a846f15d"
  end

  # numpy==1.20.1
  resource "numpy" do
    url "https://files.pythonhosted.org/packages/08/23/42b54a83abd4cb43778b876750762877e638af1dd877812f69a5f3604e0b/numpy-1.20.1-cp38-cp38-macosx_10_9_x86_64.whl"
    sha256 "a1d7995d1023335e67fb070b2fae6f5968f5be3802b15ad6d79d81ecaa014fe0"
  end

  # oauthlib==3.1.0
  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/05/57/ce2e7a8fa7c0afb54a0581b14a65b56e62b5759dbc98e80627142b8a3704/oauthlib-3.1.0-py2.py3-none-any.whl"
    sha256 "df884cd6cbe20e32633f1db1072e9356f53638e4361bef4e8b03c9127c9328ea"
  end

  # pandas==1.2.3
  resource "pandas" do
    url "https://files.pythonhosted.org/packages/44/c1/97e7141e9e177d4e961e962bfb286eb33682ecc1bdcb040848d938014fd5/pandas-1.2.3-cp38-cp38-macosx_10_9_x86_64.whl"
    sha256 "a93e34f10f67d81de706ce00bf8bb3798403cabce4ccb2de10c61b5ae8786ab5"
  end

  # pyarrow==3.0.0
  resource "pyarrow" do
    url "https://files.pythonhosted.org/packages/41/da/2e88ab6437386b2054dce4792facec2e6e530d9827453222e4bf71ddc68f/pyarrow-3.0.0-cp38-cp38-macosx_10_13_x86_64.whl"
    sha256 "2c3353d38d137f1158595b3b18dcef711f3d8fdb57cf7ae2d861d07235064bc1"
  end

  # pycparser==2.20
  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/ae/e7/d9c3a176ca4b02024debf82342dab36efadfc5776f9c8db077e8f6e71821/pycparser-2.20-py2.py3-none-any.whl"
    sha256 "7582ad22678f0fcd81102833f60ef8d0e57288b6b5fb00323d101be910e35705"
  end

  # python-dateutil==2.8.2
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/36/7a/87837f39d0296e723bb9b62bbb257d0355c7f6128853c78955f57342a56d/python_dateutil-2.8.2-py2.py3-none-any.whl"
    sha256 "961d03dc3453ebbc59dbdea9e4e11c5651520a876d0f4db161e8674aae935da9"
  end

  # pytz==2021.1
  resource "pytz" do
    url "https://files.pythonhosted.org/packages/70/94/784178ca5dd892a98f113cdd923372024dc04b8d40abe77ca76b5fb90ca6/pytz-2021.1-py2.py3-none-any.whl"
    sha256 "eb10ce3e7736052ed3623d49975ce333bcd712c7bb19a58b9e2089d4057d0798"
  end

  # requests==2.25.1
  resource "requests" do
    url "https://files.pythonhosted.org/packages/29/c1/24814557f1d22c56d50280771a17307e6bf87b70727d975fd6b2ce6b014a/requests-2.25.1-py2.py3-none-any.whl"
    sha256 "c210084e36a42ae6b9219e00e48287def368a26d03a048ddad7bfee44f75871e"
  end

  # requests-oauthlib==1.3.0
  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/a3/12/b92740d845ab62ea4edf04d2f4164d82532b5a0b03836d4d4e71c6f3d379/requests_oauthlib-1.3.0-py2.py3-none-any.whl"
    sha256 "7f71572defaecd16372f9006f33c2ec8c077c3cfa6f5911a9a90202beb513f3d"
  end

  # six==1.16.0
  resource "six" do
    url "https://files.pythonhosted.org/packages/d9/5a/e7c31adbe875f2abbb91bd84cf2dc52d792b5a01506781dbcf25c91daf11/six-1.16.0-py2.py3-none-any.whl"
    sha256 "8abb2f1d86890a2dfb989f9a77cfcfd3e47c2a354b01111771326f8aa26e0254"
  end

  # tabulate==0.8.9
  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ca/80/7c0cad11bd99985cfe7c09427ee0b4f9bd6b048bd13d4ffb32c6db237dfb/tabulate-0.8.9-py3-none-any.whl"
    sha256 "d7c013fe7abbc5e491394e10fa845f8f32fe54f8dc60c6622c6cf482d25d47e4"
  end

  # tqdm==4.49.0
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/73/d5/f220e0c69b2f346b5649b66abebb391df1a00a59997a7ccf823325bd7a3e/tqdm-4.49.0-py2.py3-none-any.whl"
    sha256 "8f3c5815e3b5e20bc40463fa6b42a352178859692a68ffaa469706e6d38342a5"
  end

  # typing-extensions==3.10.0.0
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/2e/35/6c4fff5ab443b57116cb1aad46421fb719bed2825664e8fe77d66d99bcbc/typing_extensions-3.10.0.0-py3-none-any.whl"
    sha256 "779383f6086d90c99ae41cf0ff39aac8a7937a9283ce0a414e5dd782f4c94a84"
  end

  # typing-inspect==0.6.0
  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/42/1c/66402db44184904a2f14722d317a4da0b5c8c78acfc3faf74362566635c5/typing_inspect-0.6.0-py3-none-any.whl"
    sha256 "3b98390df4d999a28cf5b35d8b333425af5da2ece8a4ea9e98f71e7591347b4f"
  end

  # tzlocal==2.1
  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/5d/94/d47b0fd5988e6b7059de05720a646a2930920fff247a826f61674d436ba4/tzlocal-2.1-py2.py3-none-any.whl"
    sha256 "e2cb6c6b5b604af38597403e9852872d7f534962ae2954c7f35efcb1ccacf4a4"
  end

  # urllib3==1.26.6
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/5f/64/43575537846896abac0b15c3e5ac678d787a4021e906703f1766bfb8ea11/urllib3-1.26.6-py2.py3-none-any.whl"
    sha256 "39fb8672126159acb139a7718dd10806104dec1e2f0f6c88aab05d17df10c8d4"
  end

  def install
    require 'fileutils'

    ENV["PIP_DISABLE_PIP_VERSION_CHECK"] = "1"

    venv = virtualenv_create(libexec, 'python3.8')

    resources.each do |r|
      if r.name == "feather-format" or r.name.match(/^mo(.*)/)
        venv.pip_install "%s/jira-offline--%s--%s.tar.gz" % [HOMEBREW_CACHE, r.name, r.version]
      else
        # extract real wheel name from the resource URL
        wheel_name = "%s/%s" % [HOMEBREW_CACHE, r.url.split('/').last]

        # symlink the cached resource as the real wheel name, so pip will install it
        FileUtils.ln_sf "%s/jira-offline--%s--%s.whl" % [HOMEBREW_CACHE, r.name, r.version], wheel_name

        venv.pip_install wheel_name
      end
    end

    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"jira"
  end
end
