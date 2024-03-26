# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kafui < Formula
  desc "k9s inspired terminal ui to quickly browse multiple kafka instance from the command line"
  homepage "https://github.com/Benny93/kafui"
  version "0.1.8-SNAPSHOT-ee1052a"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.8/kafui_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d7252a7f7aa292eec0b9469a93a626de27cd86d619a0e4c54d259d0c72fe6ceb"

      def install
        bin.install "kafui"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.8/kafui_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "86daa5eee394416a29259d19a672cbb1ea160200aa90f15df1658e5a00d90cfa"

      def install
        bin.install "kafui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.8/kafui_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4cc9ab67d6358ab6d6a2b32371d8e58e07691beed378caf00c77bc36a25f9c34"

      def install
        bin.install "kafui"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.8/kafui_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "83579b6522204faae785a4c1b5c3545ac39e365bddf2c0e9f04d70f0c99d70f7"

      def install
        bin.install "kafui"
      end
    end
  end

  def caveats
    <<~EOS
      Run using kafui
    EOS
  end
end
