class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.4.1/poke_darwin_arm64.tar.gz"
      sha256 "e5f6baee5fe997784d515c3dfa2aa31613a960c6c7aac6ca1e9691a7b4c54185"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.4.1/poke_darwin_amd64.tar.gz"
      sha256 "16ed5940f91542373ff63ec29568eec14007face5f7ed5d34c0e56130cdeb8b7"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.4.1/poke_linux_arm64.tar.gz"
      sha256 "d369ff401a130db0e7766fc5c1500d5ba58942cc969daa10f6d4c28c53f2856b"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.4.1/poke_linux_amd64.tar.gz"
      sha256 "096a1fa939e1c77b73f2fec59c9d9c8826069355bf747933b7ace86a79d34e63"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
