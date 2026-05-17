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
  version "0.1.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.13/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "7b4612f5ac8bdc74d60b78f2f62d2c94262577e2130c034cd7f1476bc342d2cc"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.13/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "1b2872e8422224fe9964c645b1254cb60ec398928c0bc70bb27f9f4702cfbcc6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.13/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3244ccbc5cd7505a0562a3a68e73161ed1033917100f3667000286be9e237d9"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.13/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b79e24a1474090d86afe2e9fe864fc0d3580d1fe52dce57a104eaf0c83edaa16"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
