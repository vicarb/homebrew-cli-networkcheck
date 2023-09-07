class CliNetworkCheck < Formula
    desc "A CLI tool for checking network connections"
    homepage "https://github.com/vicarb/cli-networkcheck"
    url "https://github.com/vicarb/cli-networkcheck/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "8c9596b47f6a8dcb943080f01712d843d2e4545ab48c292c281e6decc57038f7"
  
    depends_on "python@3.9"
  
    resource "psutil" do
      url "https://files.pythonhosted.org/packages/your/path/to/psutil-5.9.5-cp38-abi3-macosx_11_0_arm64.whl"
      sha256 "c607bb3b57dc779d55e1554846352b4e358c10fff3abf3514a7a6601beebdb30"
    end
  
    resource "termcolor" do
      url "https://files.pythonhosted.org/packages/your/path/to/termcolor-2.3.0.tar.gz"
      sha256 "b5b08f68937f138fe92f6c089b99f1e2da0ae56c52b78bf7075fd95420fd9a5a"
    end
  
    def install
      virtualenv_install_with_resources
    end
  
    test do
      system "true"
    end
  end
  