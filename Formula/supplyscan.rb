class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.11.0/supplyscan-darwin-arm64"
      sha256 "e70baabd000ca149f8966255af09d1b7cc714c952c1b8d86e3d3a67300650d21"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.11.0/supplyscan-darwin-amd64"
      sha256 "818d730a435c2884d3355b1d480bb60b116e428b1a0b860ea2fce5fb34ea0ce3"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.11.0/supplyscan-linux-arm64"
      sha256 "368b13c861d5b82313e11ba771db56632378e9701702a1896e3f77b0b7dce99c"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.11.0/supplyscan-linux-amd64"
      sha256 "679609ef8f8960985e9bc11de84751bb5d533ad67769cd4d5be71f83f64d0eb3"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
