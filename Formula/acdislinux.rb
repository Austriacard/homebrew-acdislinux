class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/linux-p11module-1.7.0.tar.gz"
  sha256 "9c8854f9be93fb526038a68a12fa9a6a3393828723bcad4e68e1299c9b005fd7"
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
