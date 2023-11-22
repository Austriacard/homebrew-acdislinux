class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.2.0/linux-1.2.0.tar.gz"
  sha256 "03549335a7864d2e0ba90b2d243f0ff5c42c2b49ad2201f91c6e35f3b73024b8"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.2.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5e9accdfb79cf729ba2e99374ed6aa6c9008f9304b707b535601163f42429eb4"
  end
  on_linux do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"libacdis-pkcs11.so"
    end
  end

  test do
    system "true"
  end
end
