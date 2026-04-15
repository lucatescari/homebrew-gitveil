class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.2.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.2.0/gitveil-1.2.0-darwin-arm64.tar.gz"
      sha256 "d8e3f3c1ec7bef98354b5ed89d445c792ac943c53b663291df2b51bf19518cb0"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
