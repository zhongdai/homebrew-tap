class RuthCli < Formula
  desc "Agent-friendly TOTP authenticator CLI"
  homepage "https://github.com/zhongdai/ruth-cli"
  url "https://github.com/zhongdai/ruth-cli/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "1efb82eee297e4ff4e00b7ecb80d95ead66bd7403b920fd5a1c3634f40ff9e15"
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
