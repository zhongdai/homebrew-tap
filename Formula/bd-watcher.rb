class BdWatcher < Formula
  desc "Lightweight TUI dashboard that watches bd (beads) graph progress"
  homepage "https://github.com/zhongdai/bd-watcher"
  url "https://github.com/zhongdai/bd-watcher/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "0b0dfd26f5b48bda3337d391bef20379e14c5e1c257fe90cc05fb3c54ad46395"
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
