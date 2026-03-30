class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "0.3.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.3.1/gitveil-0.3.1-darwin-arm64.tar.gz"
      sha256 "de46e0a33d4d56f0481bf1e5fb0943bfc7156c72ab99eb325b20714a3a4d9837"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
