class Supplyscan < Formula
  desc "Security scanner for JavaScript and Python lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/undont/supplyscan"
  version "1.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.2/supplyscan-darwin-arm64"
      sha256 "3bf8fc0343702e2bdf8691beb0cb9b314aafd222502db6f7385aa040f2a38884"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.2/supplyscan-darwin-amd64"
      sha256 "b80c6fea2e2b3be5b5074f9d0376881643f0c0b1835fe8a719c5506793e3944f"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.2/supplyscan-linux-arm64"
      sha256 "58aecad41fd1c178e395835822c54aaace2062c24abda162e17d0b4a9bd69509"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.2/supplyscan-linux-amd64"
      sha256 "0d82da35461d68a86612945e87c65d2c821ebc65e341b9baeee177e31e43751c"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
