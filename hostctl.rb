class Hostctl < Formula
  include Language::Python::Virtualenv

  desc "Manage your /etc/hosts file easily"
  homepage "https://github.com/PrateekAlakh/hostctl"
  url "https://github.com/PrateekAlakh/hostctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6bb659211deb5bec59386eab2b844505352437247276c402f1ebc5e0aab86474"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/56/67/bda961c1dd1bac06c0f62b321a7f9b3e518d9f242fef8f0a72c625c114d0/typer-0.12.3.tar.gz"
    sha256 "cb95e1a985946c706a0417fef6b4d13b98c9b3e2745696955bb287f47225e7a1"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/6e/89/859c8f2c38daae2cb7c3d245eb6220137d7853fb57d50e3209adf3133b97/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e7dfaf8a1a788f2f0a5e6f3b1c2c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"hostctl", "--help"
  end
end
