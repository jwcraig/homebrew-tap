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
  version "0.1.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.18/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "48b710370612850d0c74a2764bcdccc3d9fea94abb23dc02056882825a181e4a"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.18/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "f6a6b608df462b79ddb7e31234104758275dc9fabc8a2a6396ba9e703f2f69ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.18/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee41c22cead8b059e9721a8695770603d41c54f4835889de13bbf00cb46a18e4"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.18/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a2131304a925c369eed2f3dd34259cbe7fdea5d3d15848aff7e8d6c109c00ba"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
