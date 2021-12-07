# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-darwin-arm64.tar.gz"
      sha256 "26ef02e9c1a40c0acecb6d6274c8c83448c541ff5541b8748f57c319573a7957"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-darwin-amd64.tar.gz"
      sha256 "33f522b93c9b103f867c888d35d82e818442d9e3e25299d4672c0e8f7739a44c"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-linux-arm64.tar.gz"
      sha256 "75ac99df118c1954f4236a8faf507f60e9e08769961a3342873fca43b5524c4d"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-linux-amd64.tar.gz"
      sha256 "451a223c77e2d8ae0905a13660f9c1c5bee61301a6cc0bddc338514cc8a42ab7"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
