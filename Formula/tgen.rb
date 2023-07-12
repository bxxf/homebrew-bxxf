# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tgen < Formula
  desc "Simple tool for creating CSV target files"
  homepage "https://github.com/bxxf/tgen"
  version "0.0.10"

  on_macos do
    url "https://github.com/bxxf/tgen/releases/download/v0.0.10/tgen_0.0.10_darwin_all.tar.gz"
    sha256 "dfcd89143d04c890c979ddac3cfe68e162e6f358512b1d368c8d506fcd6e7789"

    def install
      bin.install "tgen"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bxxf/tgen/releases/download/v0.0.10/tgen_0.0.10_linux_amd64.tar.gz"
      sha256 "78877b3a3eaea27d9fccc4a5f2bdf3e1900c267977051863ff36dbb891a54914"

      def install
        bin.install "tgen"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bxxf/tgen/releases/download/v0.0.10/tgen_0.0.10_linux_arm64.tar.gz"
      sha256 "320146f628e7d1e5928ede6d95ed35d78634277bf682919b3d4982dd20ec2d64"

      def install
        bin.install "tgen"
      end
    end
  end

  test do
    system "#{bin}/tgen"
  end
end
