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
  version "0.1.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.12/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "b6da4ff486f01768e3872724abbd2771f1a387175806a49e8d2ed6180b91fc0f"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.12/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "1c36ae5b61d7cd5beac1ef5d3c8b154e92c4e6632723e30dffd229b0daf066cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.12/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e93abbce8d3fbf44bf71715f9327d3cad8ea59dc697a75330b898a466bc45df5"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.12/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24d59689b2d376a5021afd82235432914e813ebc208d0d8834ae4c3d9bd1d0be"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
