# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.7/fing-darwin-arm64.tar.gz"
      sha256 "fa5131b6ec43480f9393e89b57467082a78c97a155655c107e4ae4753f67d038"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.7/fing-darwin-amd64.tar.gz"
      sha256 "5577d640216e16447558a9b39e56f728e390631cc71fa86a8fb737c25b627a3e"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.7/fing-linux-amd64.tar.gz"
      sha256 "83b2eb37b21ef485fbbd1ab373b4dcba02f3d0feec4a30198e38fbd1811cedc2"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.7/fing-linux-arm64.tar.gz"
      sha256 "f0979b89b060bb05d21835916b05f5b34444e3b2c97b14d0c453dc7013681d7d"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
