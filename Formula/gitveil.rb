class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "0.3.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.3.2/gitveil-0.3.2-darwin-arm64.tar.gz"
      sha256 "bc9f2b28e60a44500cecfa6bfa2118b237137e387ab0d93bfa3ecfdcdbbcb95d"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
