class Hostctl < Formula
  include Language::Python::Virtualenv

  desc "Hosts file manager CLI"
  homepage "https://github.com/PrateekAlakh/hosts_manager"
  url "https://github.com/PrateekAlakh/hosts_manager/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/hostctl", "--help"
  end
end
