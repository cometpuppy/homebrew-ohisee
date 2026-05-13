# typed: false
# frozen_string_literal: true

class Ohisee < Formula
  desc "TUI Item Tracker for Dark Souls Remastered Item Randomizers"
  homepage "https://github.com/cometpuppy/ohisee"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cometpuppy/ohisee/releases/download/v0.8.1/ohisee_darwin_amd64.tar.gz"
      sha256 "d5138c20e1ae8fe7ea72f703e9910f7546c3551759faac2f9c15e9c6e14f604f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cometpuppy/ohisee/releases/download/v0.8.1/ohisee_darwin_arm64.tar.gz"
      sha256 "013e0436767fa849b8dd42976cfa586fb54291945953846eb38fd22440b3d7d5"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/cometpuppy/ohisee/releases/download/v0.8.1/ohisee_linux_amd64.tar.gz"
      sha256 "285a8f2577df1455600d0f40d845c3f25f973faa2253f7fae23d1ef1a2f632eb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cometpuppy/ohisee/releases/download/v0.8.1/ohisee_linux_arm64.tar.gz"
      sha256 "555e336677d5e3a7957a8ae26011dc2ea33053a732f8e2fdc1e5658e39d1bf58"
    end
  end

  def install
    bin.install "ohisee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ohisee --version", 2)
  end
end
