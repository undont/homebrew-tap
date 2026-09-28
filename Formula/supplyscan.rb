class Supplyscan < Formula
  desc "Security scanner for JavaScript and Python lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/undont/supplyscan"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.1/supplyscan-darwin-arm64"
      sha256 "7b2ea2b8b2cc96aa6c149da47a4fb186f0ed773c436e0b0974c40f92f568a863"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.1/supplyscan-darwin-amd64"
      sha256 "d9f733f3105f69d7959338fe1833c12dd6b04ce0c30289d9e52df8ab986209ae"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.1/supplyscan-linux-arm64"
      sha256 "f9f53d2bdff9b8901f384d3ddc3f65a434b9583d0d68446d856f65703f99277e"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.1/supplyscan-linux-amd64"
      sha256 "e60dbcb94fafc03bf371618b9221fc02ed85734dfee3ba3c0853b6c8765fbb24"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
