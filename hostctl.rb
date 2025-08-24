class Hostctl < Formula
  include Language::Python::Virtualenv

  desc "Manage your /etc/hosts file easily"
  homepage "https://github.com/PrateekAlakh/hostctl"
  url "https://github.com/PrateekAlakh/hostctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6bb659211deb5bec59386eab2b844505352437247276c402f1ebc5e0aab86474"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/source/t/typer/typer-0.12.3.tar.gz"
    sha256 "49e73131481d804288ef62598d97a1ceef3058905aa536a1134f90891ba35482"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.9.3.tar.gz"
    sha256 "bc1e01b899537598cf02579d2b9f4a415104d3fc439313a7a2c165d76557a08e"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"hostctl", "--help"
  end
end
