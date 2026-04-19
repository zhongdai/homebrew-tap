class BdWatcher < Formula
  desc "Lightweight TUI dashboard that watches bd (beads) graph progress"
  homepage "https://github.com/zhongdai/bd-watcher"
  url "https://github.com/zhongdai/bd-watcher/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "be8e29b2d8c7789eb6c707c84f84b960d0974caaa89a2ebd0b49a96e56be1fc6"
  license "MIT"
  head "https://github.com/zhongdai/bd-watcher.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bd-watcher", shell_output("#{bin}/bd-watcher --version")
  end
end
