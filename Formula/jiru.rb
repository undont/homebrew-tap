class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.16/jiru-darwin-arm64"
      sha256 "a3444bdc6f5f80dca9e0cae383d5d76c1a1d422a7dff9c8d9dd480344af818e5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.16/jiru-darwin-amd64"
      sha256 "a3444bdc6f5f80dca9e0cae383d5d76c1a1d422a7dff9c8d9dd480344af818e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.16/jiru-linux-arm64"
      sha256 "a3444bdc6f5f80dca9e0cae383d5d76c1a1d422a7dff9c8d9dd480344af818e5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.16/jiru-linux-amd64"
      sha256 "a3444bdc6f5f80dca9e0cae383d5d76c1a1d422a7dff9c8d9dd480344af818e5"
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
