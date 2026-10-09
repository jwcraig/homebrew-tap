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
  version "0.1.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.17/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "a828d6c267a89ef41f0a4be78311646e0df154b5a5262ebfeb1136bc60761bc0"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.17/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "d5f05ddd6fbf52d0190620becdd5d9065d1cb66ee7d8fc83da369c6c193011c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.17/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e04ce58f63e1679fb9501b77a94cb20ef91f3181679ae16f365d661d0a0e585e"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.17/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee42beb6f489365c4e2a74159f51b04c3f20df5fc2c666168c589b8073b3f269"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
