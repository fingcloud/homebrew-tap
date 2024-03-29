# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-darwin-amd64.tar.gz"
      sha256 "2d846afdb61ebbae680d65bb8a145aa404df676be907883c583cbce5c6e4ce8e"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-darwin-arm64.tar.gz"
      sha256 "a7ce8d9677c65bd392048aa00c5662cc9f165f99087e06ce3307939c52927f55"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-linux-arm64.tar.gz"
      sha256 "23f191a941b8bcf3a1eb4a6b7a5d293f7c6c1b30b712035d9e48a35549006532"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.11/fing-linux-amd64.tar.gz"
      sha256 "eff05350c5859e7830d7ac36ce763a8d8689485ce0278813b28e1aa30b324fa4"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
