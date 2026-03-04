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
  version "0.1.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.11/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "68103c582d8ac58bb277b1360af615bb7470c2dcdb3f5f7a63c5cfa25bad1f2e"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.11/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "583e4bad106cb634874933899b46f9d8d3e738870235dd68768a0f4fd72dc6c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.11/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6144355cc50913b34d2e524ee1ce2b8b19d4821246b2a96697fd5bea4a9743c6"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.11/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "955251544e097cb11178bf2ec010e153c50802086a8611da9a46d930365ddc46"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
