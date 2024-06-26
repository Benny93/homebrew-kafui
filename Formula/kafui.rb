# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kafui < Formula
  desc "Terminal ui inspired by k9s to quickly browse multiple kafka instances"
  homepage "https://github.com/Benny93/kafui"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.28/kafui_darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cbb74a788b6f12070e57961bb6a06379daaf7dd5ab2fb334b03896605f1ecf20"

      def install
        bin.install "kafui"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.28/kafui_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b83e1588640b457ca85b09168c7e10edf8548034d8bcef11377ebba48136ea21"

      def install
        bin.install "kafui"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.28/kafui_linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e271fa2a93fba262ffa493361cac9f54256be5c044a474b34896dfa16b061a35"

      def install
        bin.install "kafui"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Benny93/kafui/releases/download/v0.1.28/kafui_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "85b6225e05d50eefe6d8b0df95ae30f805feca236aa5829946aceddf0fc9337b"

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
