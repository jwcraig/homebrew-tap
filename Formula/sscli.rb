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
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.6/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "1e1bb7ac592e3ce725ef8e71cfb186a378e918f29ad8f201c5f33679f2b869ba"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "0825de70e3033c7a2a4e223faff8980a4b069396c4a44ee8923c0a2a03198294"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8772d9dec6a49a43d5559d9ed937b14065de88a594e7cbf94815f9dc53007429"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04ace9d874f71002ea3467710d65fc1b34a10f601f32fe3c35a35c9f916919a3"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
