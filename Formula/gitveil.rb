class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.3.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.3.1/gitveil-1.3.1-darwin-arm64.tar.gz"
      sha256 "f5e314ffba23eeaa9b623aad705d4e0ad8049d52f41692d7fca9cea816e58fc2"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
