class Supplyscan < Formula
  desc "Security scanner for JavaScript and Python lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/undont/supplyscan"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.0/supplyscan-darwin-arm64"
      sha256 "a6021df5b6da8c77e3245d23ae4d5ee7788a6cea0e6780c22cc2b696c1183eb8"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.0/supplyscan-darwin-amd64"
      sha256 "140ce12a0b81b1d3134afa129243d401fb3bb7ec89efe4266e91c34792e911f1"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.0/supplyscan-linux-arm64"
      sha256 "55aa1cc91090004da16732a8faee0da50ff2aeb400d97c77c342d551d0c13b28"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/undont/supplyscan/releases/download/v1.17.0/supplyscan-linux-amd64"
      sha256 "03aef5408edb7554a02249e8192273aae248386c80a6d9cddbf3df42542d7513"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
