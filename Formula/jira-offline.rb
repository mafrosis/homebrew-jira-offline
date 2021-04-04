class JiraOffline < Formula
  include Language::Python::Virtualenv

  desc "Git-like CLI for using Jira offline"
  homepage "https://pypi.org/project/jira-offline"
  url "https://github.com/mafrosis/jira-offline/releases/download/0.2b1/jira_offline-0.2b1-py3-none-any.whl"
  sha256 "cc7d80f7cc2a9fb3a905966db35fe669b9bb820dc6752c24fa7eb31e8efe68f3"
  license "MIT"

  depends_on "python@3.8"

  # arrow==0.15.8
  resource "arrow" do
    url "https://files.pythonhosted.org/packages/40/2a/9dd6a391e7813b9908b4dcaec7df0f2d365cfc0f071799f2ae5147707923/arrow-0.15.8-py2.py3-none-any.whl"
    sha256 "271b8e05174d48e50324ed0dc5d74796c839c7e579a4f21cf1a7394665f9e94f"
  end

  # python-dateutil==2.8.1
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/d4/70/d60450c3dd48ef87586924207ae8907090de0b306af2bce5d134d78615cb/python_dateutil-2.8.1-py2.py3-none-any.whl"
    sha256 "75bb3f31ea686f1197762692a9ee6a7550b59fc6ca3a1f4b5d7e32fb98e2da2a"
  end

  # six==1.15.0
  resource "six" do
    url "https://files.pythonhosted.org/packages/ee/ff/48bde5c0f013094d729fe4b0316ba2a24774b3ff1c52d924a8a4cb04078a/six-1.15.0-py2.py3-none-any.whl"
    sha256 "8b74bedcbbbaca38ff6d7491d76f2b06b3592611af620f8426e82dddb04a5ced"
  end

  # click==7.1.2
  resource "click" do
    url "https://files.pythonhosted.org/packages/d2/3d/fa76db83bf75c4f8d338c2fd15c8d33fdd7ad23a9b5e57eb6c5de26b430e/click-7.1.2-py2.py3-none-any.whl"
    sha256 "dacca89f4bfadd5de3d7489b7c8a566eee0d3676333fbb50030263894c38c0dc"
  end

  # cryptography==3.4.7
  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/8a/1d/b6ea7bf3ef251ff8ea0025cb952e898027097991c828140c8befd941e6fd/cryptography-3.4.7-cp36-abi3-macosx_10_10_x86_64.whl"
    sha256 "3d8427734c781ea5f1b41d6589c293089704d4759e34597dce91014ac125aad1"
  end

  # cffi==1.14.5
  resource "cffi" do
    url "https://files.pythonhosted.org/packages/57/cc/4c80c4796ca182433502cd20119a2f4b2bab6caa097745ecaf23fc692ae1/cffi-1.14.5-cp38-cp38-macosx_10_9_x86_64.whl"
    sha256 "8b198cec6c72df5289c05b05b8b0969819783f9418e0409865dac47288d2a053"
  end

  # pycparser==2.20
  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/ae/e7/d9c3a176ca4b02024debf82342dab36efadfc5776f9c8db077e8f6e71821/pycparser-2.20-py2.py3-none-any.whl"
    sha256 "7582ad22678f0fcd81102833f60ef8d0e57288b6b5fb00323d101be910e35705"
  end

  # dictdiffer==0.8.1
  resource "dictdiffer" do
    url "https://files.pythonhosted.org/packages/97/92/350b6b6ec39c5f87d98d04c91a50c498518716a05368e6dea88b5c69b590/dictdiffer-0.8.1-py2.py3-none-any.whl"
    sha256 "d79d9a39e459fe33497c858470ca0d2e93cb96621751de06d631856adfd9c390"
  end

  # pyarrow==3.0.0
  resource "pyarrow" do
    url "https://files.pythonhosted.org/packages/41/da/2e88ab6437386b2054dce4792facec2e6e530d9827453222e4bf71ddc68f/pyarrow-3.0.0-cp38-cp38-macosx_10_13_x86_64.whl"
    sha256 "2c3353d38d137f1158595b3b18dcef711f3d8fdb57cf7ae2d861d07235064bc1"
  end

  # numpy==1.20.1
  resource "numpy" do
    url "https://files.pythonhosted.org/packages/08/23/42b54a83abd4cb43778b876750762877e638af1dd877812f69a5f3604e0b/numpy-1.20.1-cp38-cp38-macosx_10_9_x86_64.whl"
    sha256 "a1d7995d1023335e67fb070b2fae6f5968f5be3802b15ad6d79d81ecaa014fe0"
  end

  # feather-format==0.4.1
  resource "feather-format" do
    url "https://files.pythonhosted.org/packages/67/e8/ee99f142f19d35588501943510f8217f9dd77184574b0c933c53218e0f19/feather-format-0.4.1.tar.gz"
    sha256 "45f67e3745d394d4f160ca6d636bbfd4f8b68d01199dc1649b6e487d3e878903"
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

  # pytz==2021.1
  resource "pytz" do
    url "https://files.pythonhosted.org/packages/70/94/784178ca5dd892a98f113cdd923372024dc04b8d40abe77ca76b5fb90ca6/pytz-2021.1-py2.py3-none-any.whl"
    sha256 "eb10ce3e7736052ed3623d49975ce333bcd712c7bb19a58b9e2089d4057d0798"
  end

  # ProxyTypes==0.10.0
  resource "ProxyTypes" do
    url "https://files.pythonhosted.org/packages/1e/d7/e682be643717d9400470f374cf53e1586a834913a79d96ea54d2323c711c/ProxyTypes-0.10.0-py3-none-any.whl"
    sha256 "f3bf78debafe15d8ccb31a0c909f820408bb678532a8be8bf737ddd50c03f298"
  end

  # requests==2.25.1
  resource "requests" do
    url "https://files.pythonhosted.org/packages/29/c1/24814557f1d22c56d50280771a17307e6bf87b70727d975fd6b2ce6b014a/requests-2.25.1-py2.py3-none-any.whl"
    sha256 "c210084e36a42ae6b9219e00e48287def368a26d03a048ddad7bfee44f75871e"
  end

  # chardet==4.0.0
  resource "chardet" do
    url "https://files.pythonhosted.org/packages/19/c7/fa589626997dd07bd87d9269342ccb74b1720384a4d739a1872bd84fbe68/chardet-4.0.0-py2.py3-none-any.whl"
    sha256 "f864054d66fd9118f2e67044ac8981a54775ec5b67aed0441892edb553d21da5"
  end

  # certifi==2020.12.5
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/5e/a0/5f06e1e1d463903cf0c0eebeb751791119ed7a4b3737fdc9a77f1cdfb51f/certifi-2020.12.5-py2.py3-none-any.whl"
    sha256 "719a74fb9e33b9bd44cc7f3a8d94bc35e4049deebe19ba7d8e108280cfd59830"
  end

  # urllib3==1.26.4
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/09/c6/d3e3abe5b4f4f16cf0dfc9240ab7ce10c2baa0e268989a4e3ec19e90c84e/urllib3-1.26.4-py2.py3-none-any.whl"
    sha256 "2f4da4594db7e1e110a944bb1b551fdf4e6c136ad42e4234131391e21eb5b0df"
  end

  # idna==2.10
  resource "idna" do
    url "https://files.pythonhosted.org/packages/a2/38/928ddce2273eaa564f6f50de919327bf3a00f091b5baba8dfa9460f3a8a8/idna-2.10-py2.py3-none-any.whl"
    sha256 "b97d804b1e9b523befed77c48dacec60e6dcb0b5391d57af6a65a312a90648c0"
  end

  # requests-oauthlib==1.3.0
  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/a3/12/b92740d845ab62ea4edf04d2f4164d82532b5a0b03836d4d4e71c6f3d379/requests_oauthlib-1.3.0-py2.py3-none-any.whl"
    sha256 "7f71572defaecd16372f9006f33c2ec8c077c3cfa6f5911a9a90202beb513f3d"
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

  # typing-inspect==0.6.0
  resource "typing-inspect" do
    url "https://files.pythonhosted.org/packages/42/1c/66402db44184904a2f14722d317a4da0b5c8c78acfc3faf74362566635c5/typing_inspect-0.6.0-py3-none-any.whl"
    sha256 "3b98390df4d999a28cf5b35d8b333425af5da2ece8a4ea9e98f71e7591347b4f"
  end

  # mypy-extensions==0.4.3
  resource "mypy-extensions" do
    url "https://files.pythonhosted.org/packages/5c/eb/975c7c080f3223a5cdaff09612f3a5221e4ba534f7039db34c35d95fa6a5/mypy_extensions-0.4.3-py2.py3-none-any.whl"
    sha256 "090fedd75945a69ae91ce1303b5824f428daf5a028d2f6ab8a299250a846f15d"
  end

  # typing-extensions==3.7.4.3
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/60/7a/e881b5abb54db0e6e671ab088d079c57ce54e8a01a3ca443f561ccadb37e/typing_extensions-3.7.4.3-py3-none-any.whl"
    sha256 "7cb407020f00f7bfc3cb3e7881628838e69d8f3fcab2f64742a5e76b2f841918"
  end

  # tzlocal==2.1
  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/5d/94/d47b0fd5988e6b7059de05720a646a2930920fff247a826f61674d436ba4/tzlocal-2.1-py2.py3-none-any.whl"
    sha256 "e2cb6c6b5b604af38597403e9852872d7f534962ae2954c7f35efcb1ccacf4a4"
  end

  def install
    require 'fileutils'

    ENV["PIP_DISABLE_PIP_VERSION_CHECK"] = "1"

    venv = virtualenv_create(libexec, 'python3.8')

    resources.each do |r|
      if r.name == "feather-format"
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
