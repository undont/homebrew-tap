class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.6.0/poke_darwin_arm64.tar.gz"
      sha256 "226f1cd299ed39f0bf9e830218b934af5a58509077fd7bb968bf57ff03c263a3"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.6.0/poke_darwin_amd64.tar.gz"
      sha256 "4dbfddd3d7a7a07bda534a45a23e41d1a9483e3cf3f6a4214ea42b026a884b08"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.6.0/poke_linux_arm64.tar.gz"
      sha256 "b2c7c7a451d55a3f18a05e000749da6f90acf1f31ff42086eedb8b5ef1bb6195"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.6.0/poke_linux_amd64.tar.gz"
      sha256 "a94740d08503163af73c9b6ba1b76d3c401c3c04684c417fb7736f0cbae75c2e"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
