class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.3.3"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.3.3/gitveil-1.3.3-darwin-arm64.tar.gz"
      sha256 "cce94401c459eeee9d24a2ed4729b2db5bb63b9fe8368a6f3d1f0c2c1a3afe03"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
