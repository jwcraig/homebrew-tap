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
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v0.1.1/sscli-x86_64-apple-darwin.tar.gz"
      sha256 "b64d35b4346721879ed71cad2c4c34c422087de5f2ad4f12806669ae45ac6cbb"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-aarch64-apple-darwin.tar.gz"
      sha256 "2b00295d8c75d512d2dbc1cd0aa7a3bc685daca710f87d918512c05ea149446f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5462550a7ee0eebdebaefa6e94d3b78f0108740b36a12e3fe273f50143040420"
    end
    on_arm do
      url "https://github.com/jwcraig/sql-server-cli/releases/download/v#{version}/sscli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f8373c2f3d6d2a49ec327cd8bb0f1c52a3d5396964b1451d8ebcb36a1113d54"
    end
  end

  def install
    bin.install "sscli"
  end

  test do
    assert_match "sscli", shell_output("#{bin}/sscli --version")
  end
end
