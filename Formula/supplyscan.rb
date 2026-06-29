class Supplyscan < Formula
  desc "Security scanner for JavaScript and Python lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/undont/supplyscan"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.16.0/supplyscan-darwin-arm64"
      sha256 "d8d9f5b9e8e8c4d8620e81503815dc816aaebe2555f038309ceb2d1762d37482"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.16.0/supplyscan-darwin-amd64"
      sha256 "b4bef4b4f162e1e3b2a9d4ab940f5ff912b5b5e8096b33297d9416ce551e7799"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.16.0/supplyscan-linux-arm64"
      sha256 "d60388cfc3238c490aa7dcbb0dd19e9c5695f4184fc28713df74a9b2dceb2ade"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.16.0/supplyscan-linux-amd64"
      sha256 "b906e26ce24debcf0969d4aad312633c3c83ea490350f8a8c8e90a20882d65c3"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
