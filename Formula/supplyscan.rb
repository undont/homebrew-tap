class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.0/supplyscan-darwin-arm64"
      sha256 "573fb82310feacfc93537d1e5a76a8b83a4fccd9ea170aad974d4a4b4f1f9d02"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.0/supplyscan-darwin-amd64"
      sha256 "085a567b600a6bd544bfa653424b1a11a5aaa2d65fe60dc192f99e6b645792a7"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.0/supplyscan-linux-arm64"
      sha256 "97d239a639a64adf0e64373ef1812ed1e7ebf6b563417c5174bb38e56695db4e"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.0/supplyscan-linux-amd64"
      sha256 "cc326b88ef668b2d3b06b407e5464294f4ad97bf50280535d466a59e2301c9ce"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
