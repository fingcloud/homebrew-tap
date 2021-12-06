# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-darwin-amd64.tar.gz"
      sha256 "4122d18fe9cf3056d5083368db0605858f9d20d326461def23b2591d6b038192"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-darwin-arm64.tar.gz"
      sha256 "6a44a6a71f249a34ff23b67fd1b17dec5040c37be081f542d9bce2b210e4d4ff"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-linux-arm64.tar.gz"
      sha256 "237a0601e498388d3d0fd31eb28cdb3d0591273d861c905a26151e1df8f47855"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.3/fing-linux-amd64.tar.gz"
      sha256 "a6347ab2b71e43f27e58ae33e990c6ef47a0da7f1aa0eae7286385611ace10cd"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
