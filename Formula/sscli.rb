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
  version "0.1.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.15/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "ea91664d78a38a089ccd8e0adb5b8071b23a0a05e11932106b7eb719432cc0e3"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.15/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "594c5b595c7f22e1110eafd77e8fb73499e2efbcf46d739135bc68abd0a40963"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.15/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7859a090cb88cbdaa1497297ee0e9fb434565a78496115b89a79b336fc86bd31"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.15/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68cb9d9625b5f6a6bb73f8eda4f55b844b0e3a02825b5b329bc4762db61d0904"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
