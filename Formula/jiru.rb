class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/undont/jiru"
  version "0.3.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/undont/jiru/releases/download/v0.3.19/jiru-darwin-arm64"
      sha256 "e65d039a21ddbde279c5ef3c5a6e840f25ec917de40dd4cbabd77c7358d3fb14"
    else
      url "https://github.com/undont/jiru/releases/download/v0.3.19/jiru-darwin-amd64"
      sha256 "e0fca0ca0538ca624775a3a8f0a96f3245037d4dbd980f18ccfb62711780b5b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/undont/jiru/releases/download/v0.3.19/jiru-linux-arm64"
      sha256 "dcaf0718e2d46a763d24ca3c0692e9dc41cd75f4f1a9aae0371d2c49315e68d3"
    else
      url "https://github.com/undont/jiru/releases/download/v0.3.19/jiru-linux-amd64"
      sha256 "8afbcc200f2cafcf71a60d4f1f9fc6a039b405152a691b15b6768ecd9fe4d03a"
    end
  end

  def install
    binary = Dir["jiru-*"].first || "jiru"
    bin.install binary => "jiru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jiru --version")
  end
end
