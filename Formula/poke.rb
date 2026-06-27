class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
