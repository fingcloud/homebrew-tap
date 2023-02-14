# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-darwin-arm64.tar.gz"
      sha256 "d1d07e86249c07c4154229bff6f6ca1e1bb42386c14e100997e12824961d7c13"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-darwin-amd64.tar.gz"
      sha256 "b3cc96227560028c7f709552c2675e04b931127e125b4bd400a15bdbe257c0f8"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-linux-arm64.tar.gz"
      sha256 "e728fabac7d1ef6c70898af8a6ae1d0ee0230e8c930f45287c724661de1a0f43"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-linux-amd64.tar.gz"
      sha256 "8974b446cbf7513149e2353207fa189112af40e2548926f856e098d90f00b20d"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
