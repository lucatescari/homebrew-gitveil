class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "0.3.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.2.0/gitveil-0.2.0-darwin-arm64.tar.gz"
      sha256 "ac9e14e1092ff61d12d5bc18623394a923641aeab2ff1bfb403006d6842bfa89"
    end
    on_intel do
      url "https://github.com/lucatescari/gitveil/releases/download/v0.2.0/gitveil-0.2.0-darwin-arm64.tar.gz"
      sha256 "ac9e14e1092ff61d12d5bc18623394a923641aeab2ff1bfb403006d6842bfa89"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("#{bin}/gitveil --version")
  end
end
