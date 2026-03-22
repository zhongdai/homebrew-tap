class RuthCli < Formula
  desc "Agent-friendly TOTP authenticator CLI"
  homepage "https://github.com/zhongdai/ruth-cli"
  url "https://github.com/zhongdai/ruth-cli/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "abc1a1a49e9722ff0251734198b7ca8bff764a6f4eddb3decac31fa62f71de8e"
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
