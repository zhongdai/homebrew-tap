class BdWatcher < Formula
  desc "Lightweight TUI dashboard that watches bd (beads) graph progress"
  homepage "https://github.com/zhongdai/bd-watcher"
  url "https://github.com/zhongdai/bd-watcher/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "a998838c9fbd8840decc7fe7c93b96e7b1dc76af977b7eb7fef8b8c1f20cc870"
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
