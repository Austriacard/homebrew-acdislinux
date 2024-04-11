class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.6.0/linux-p11manager-1.6.0.tar.gz"
 sha256 "f837b23fc3d67c71cc0aae3b7badb254ddf36587dc71fffa15e5bfb3d1c0a820"
 depends_on "acdislinux"
 on_linux do
 def install
 inreplace "acdis-pkcs11-manager.desktop", "##PREFIX##", "#{prefix}"
 prefix.install Dir["*"]
 bin.install_symlink prefix/"PKCS11Manager"
 (share/"applications").install_symlink prefix/"acdis-pkcs11-manager.desktop"
 end
 end
 test do
 system "true"
 end
end
