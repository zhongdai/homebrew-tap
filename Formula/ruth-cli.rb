class RuthCli < Formula
  desc "Agent-friendly TOTP authenticator CLI"
  homepage "https://github.com/zhongdai/ruth-cli"
  url "https://github.com/zhongdai/ruth-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b78cf9203b5e946ffe0a5190552294130d4cbcf07e296e22efe91cbd33bf6be8"
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
