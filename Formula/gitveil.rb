class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "0.1.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.1.0/gitveil-0.1.0-darwin-arm64.tar.gz"
      sha256 "PUT_SHA256_HERE"  # shasum -a 256 gitveil-0.1.0-darwin-arm64.tar.gz
    end
    on_intel do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.1.0/gitveil-0.1.0-darwin-x86_64.tar.gz"
      sha256 "PUT_SHA256_HERE"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("#{bin}/gitveil --version")
  end
end
