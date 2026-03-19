class RuthCli < Formula
  desc "Agent-friendly TOTP authenticator CLI"
  homepage "https://github.com/zhongdai/ruth-cli"
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
