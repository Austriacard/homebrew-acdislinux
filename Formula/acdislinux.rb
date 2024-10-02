class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/linux-p11module-1.7.0.tar.gz"
  sha256 "5c0ead2444e58467c6abab3129a399c87cd5b72722661003d0a73289b2cacf20"
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
