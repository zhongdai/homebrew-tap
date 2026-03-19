class RuthCli < Formula
  desc "Agent-friendly TOTP authenticator CLI"
  homepage "https://github.com/zhongdai/ruth-cli"
  url "https://github.com/zhongdai/ruth-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/zhongdai/ruth-cli.git", branch: "main"

  depends_on "rust" => :build
  depends_on "gnupg"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ruth-cli", shell_output("#{bin}/ruth-cli --version")
  end
end
