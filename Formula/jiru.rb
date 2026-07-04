class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/undont/jiru"
  version "0.3.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/undont/jiru/releases/download/v0.3.18/jiru-darwin-arm64"
      sha256 "dc2c1654bdcfe55bf999b5708bed4918285ceac54f63fc8daebc29a3a9238fe4"
    else
      url "https://github.com/undont/jiru/releases/download/v0.3.18/jiru-darwin-amd64"
      sha256 "01905ae810e26f2a6e2eb8a95c1c29c03d856d649c15f36052dbef1589f5db9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/undont/jiru/releases/download/v0.3.18/jiru-linux-arm64"
      sha256 "55aa637e23f236bbd571aaadc31d0b17429bcf47d870c9752efe111258b6bb3e"
    else
      url "https://github.com/undont/jiru/releases/download/v0.3.18/jiru-linux-amd64"
      sha256 "2a20d619cecd016eb9b1d5ed3c8114e32e4e2d7be8c50b4f43df701a1ce47d74"
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
