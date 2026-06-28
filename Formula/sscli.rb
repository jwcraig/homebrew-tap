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
  version "0.1.14"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.14/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "7a3520f366a69a4fc7a01969ed9479a347b4cf905d2b2b1606fd6ff59ce74b24"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.14/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "9aa8e3a8aa33471f68cd513b85d6f65fea66b25d30c01e359df11c9ee2a5e132"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.14/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60cef1ee38fb66ac79b0def4e30a78fbe4843018d4a9fcccbaefe5133d940aa9"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.14/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dabf892bdeeb8cde0b1f28518231a3a9a22b7cc7f9feb4d8c204303365077b6f"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
