class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.1.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.1.1/gitveil-1.1.1-darwin-arm64.tar.gz"
      sha256 "7d34b703a8e650b3424166fcccc4d608680231ad6d7c97aa6101cad3202ae151"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
