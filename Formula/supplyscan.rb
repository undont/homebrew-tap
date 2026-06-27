class Supplyscan < Formula
  desc "Security scanner for JavaScript and Python lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/undont/supplyscan"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.15.0/supplyscan-darwin-arm64"
      sha256 "0457196bf098df50776993d113652df7941b60d8888ef810b9373a66d79d3cdd"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.15.0/supplyscan-darwin-amd64"
      sha256 "207bac373063e98476a934271bb64da8b432f97b435ef2623986a5457aa05bc9"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.15.0/supplyscan-linux-arm64"
      sha256 "7564661f6ba062794c28a1565e94ca67fdcf0531c6b33e5478da5e910e041a69"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.15.0/supplyscan-linux-amd64"
      sha256 "24fa47373c5b1e483006e8a6070060d2e0f0c22adbc97e7acae913327f894f45"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
