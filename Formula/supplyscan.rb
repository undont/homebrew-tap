class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.1/supplyscan-darwin-arm64"
      sha256 "e3acfba30c569f47118241d012e076ec7e3e5386e5b86747781644bbc2cd5362"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.1/supplyscan-darwin-amd64"
      sha256 "b8bec9807f65f62bd6139a5e1c617a938858594fc55effd3edad58153e5abdee"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.1/supplyscan-linux-arm64"
      sha256 "23d0bdf32deaadadf3bf4676123d56f698afb9544cdef804b61acbc4040a73eb"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.12.1/supplyscan-linux-amd64"
      sha256 "d2ed949232b3f48d594b2604a8d90ac8a076103296b292965aa850ea2110b7ba"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
