class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.1.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.1.2/gitveil-1.1.2-darwin-arm64.tar.gz"
      sha256 "afa6fa83ef69c3c02038bc8ab1d3f261c2cf9cc4a3b17a6ba4d3d78e5bed98ba"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
