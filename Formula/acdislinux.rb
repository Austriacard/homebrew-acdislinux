class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/linux-p11module-1.7.0.tar.gz"
  sha256 "c80ffeeef67405627b04344428062d6c2febd9a78e5939c993f015fa46c64ea1"
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
