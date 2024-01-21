class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.0/linux-p11manager-1.5.0.tar.gz"
 sha256 "a18b8a8da2fe5a86b7315f706e9225f32754234eb33fb7c453b7a85c3af35676"
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
