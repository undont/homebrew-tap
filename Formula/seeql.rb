class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.3/seeql-darwin-arm64"
      sha256 "ef1cdfb5bc3c50c2fc92f8c91d27029d8c6c72169f8c0cf2ea9a93a01652ca35"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.3/seeql-darwin-amd64"
      sha256 "4ea024506561fd6f106209a2c9c4d42bd201270cc642e0fec240d52e1e252284"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.3/seeql-linux-arm64"
      sha256 "dbb1638e36b3d5055fb59824629e662c808386c0222220cbe27ef908cf476bf2"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.3/seeql-linux-amd64"
      sha256 "e3c8ae667b87e4e6523dea583e9a9ddff6a0475fc662b88b3e909b4787d6e575"
    end
  end

  def install
    binary = Dir["seeql-*"].first || "seeql"
    bin.install binary => "seeql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seeql version")
  end
end
