class BdWatcher < Formula
  desc "Lightweight TUI dashboard that watches bd (beads) graph progress"
  homepage "https://github.com/zhongdai/bd-watcher"
  url "https://github.com/zhongdai/bd-watcher/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "72b08de7182944cac91745678f7c06ee0a19724707d27074cd1c01c62587cf55"
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
