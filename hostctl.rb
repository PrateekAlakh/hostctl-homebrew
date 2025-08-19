class Hostctl < Formula
  include Language::Python::Virtualenv

  desc "Hosts file manager CLI"
  homepage "https://github.com/PrateekAlakh/hostctl"
  url "https://github.com/PrateekAlakh/hostctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6bb659211deb5bec59386eab2b844505352437247276c402f1ebc5e0aab86474"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/hostctl", "--help"
  end
end
