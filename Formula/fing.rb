# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fing < Formula
  desc ""
  homepage "https://fing.ir"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.8/fing-darwin-amd64.tar.gz"
      sha256 "7ce63f1364cbd51755f8a17bd637258d78469632591dc10c3fb18653eaee9b5a"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.8/fing-darwin-arm64.tar.gz"
      sha256 "dce98c645338a45d3044072fb691e28e45af4016668cd32f11f99a19c42ec8c9"

      def install
        bin.install "fing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.8/fing-linux-arm64.tar.gz"
      sha256 "e380badb48236d1bd2e0ed5fca1e1db05ca5a6e74cd577450704e731349c0356"

      def install
        bin.install "fing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fingcloud/cli/releases/download/v0.2.8/fing-linux-amd64.tar.gz"
      sha256 "04c075bc7c6ca45a371d4b9732d41db2152579234cb3c02d945ffdbbe0575aa3"

      def install
        bin.install "fing"
      end
    end
  end

  test do
    system "#{bin}/fing version"
  end
end
