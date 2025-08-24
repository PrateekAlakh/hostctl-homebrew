class Hostctl < Formula
  include Language::Python::Virtualenv

  desc "Manage your /etc/hosts file easily"
  homepage "https://github.com/PrateekAlakh/hostctl"
  url "https://github.com/PrateekAlakh/hostctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6bb659211deb5bec59386eab2b844505352437247276c402f1ebc5e0aab86474"
  license "MIT"

  depends_on "python@3.11"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/8a/11/ea0e5e01c5d7a8948f0215b2b9a7112477bb4a7bbed6d9dd85042b05771c/typer-0.12.3.tar.gz"
    sha256 "e7fc536b5c75a47651c0f6178529e85ca27c2aada52fa57151a929d61925dcb5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/9d/f4/79a003e35e90f25d1c4c4d47dbbc2a87de110674af78e6a45a2790a8e36b/click-8.1.7.tar.gz"
    sha256 "ca9853ad4606f3fda57f6be6b8be4748f9a0b3b75d39bbbc30ef2d8aa5f5f05e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/hostctl", "--help"
  end
end
