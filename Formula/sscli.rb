# Homebrew formula for sscli
# This file should be placed in Formula/sscli.rb in the jwcraig/homebrew-tap repository
#
# Setup instructions:
# 1. Create a new repository: jwcraig/homebrew-tap
# 2. Create the directory structure: mkdir -p Formula
# 3. Copy this file to Formula/sscli.rb
# 4. Update the sha256 values after the first release (get them from checksums-sha256.txt)
# 5. The release workflow will automatically update version and sha256 on new releases

class Sscli < Formula
  desc "SQL Server CLI for AI coding agents"
  homepage "https://github.com/jwcraig/sql-server-cli"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.16/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "5ee847b3d7785f88a6e229e6e3aebd8a82fae5044ad6c74b961d21cf65ae24ca"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.16/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "e8505635749cca7392341a0f118c9aa3a4b43a568bb64f0b925a9d26041d98c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.16/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b6c6ae4853a0bbc138e774e96ca7036c262ba51f16fbaf3a10302e516cffffa"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.16/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1eb2aa616cf03edd6aa4d4e9d4d3cfc3e8b4b0d8e6e304e6d6b9e7acbc5677f"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
