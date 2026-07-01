class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.5.0/poke_darwin_arm64.tar.gz"
      sha256 "caec9cd6267e0474ee0b9e12145fef25dbb2a4a26832cf88d6403564f4d10701"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.5.0/poke_darwin_amd64.tar.gz"
      sha256 "da362959b42a0be04690c7027aba50676385846223064a4c8d03a75f095b348e"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.5.0/poke_linux_arm64.tar.gz"
      sha256 "7daf28c36ceb9e15845933a3834eaa796ec7007571af77d0e6398d99986bb1a5"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.5.0/poke_linux_amd64.tar.gz"
      sha256 "f17a930f6c17b2b01f85ea8472913451a1d4de921cb16a0b4b5e716bdc779b6a"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
