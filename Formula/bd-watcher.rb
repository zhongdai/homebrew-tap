class BdWatcher < Formula
  desc "Lightweight TUI dashboard that watches bd (beads) graph progress"
  homepage "https://github.com/zhongdai/bd-watcher"
  url "https://github.com/zhongdai/bd-watcher/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5d6d33137679eec287036fbac1dfc8bbb3e0c21b937e90e0a3b0ac4754cfb976"
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
