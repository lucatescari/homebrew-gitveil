class Gitveil < Formula
  desc "Transparent file encryption in git (git-crypt compatible)"
  homepage "https://github.com/lucatescari/gitveil"
  version "1.3.0"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/lucatescari/gitveil/releases/download/v1.3.0/gitveil-1.3.0-darwin-arm64.tar.gz"
      sha256 "cf71eed8c80899a8c8e3d44dfbb08c66fd65bd316e68013972bf2bd5ad15b3af"
    end
  end

  def install
    bin.install "gitveil"
  end

  test do
    assert_match "gitveil", shell_output("\#{bin}/gitveil --version")
  end
end
