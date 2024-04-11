class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.6.0/linux-p11manager-1.6.0.tar.gz"
 sha256 "2c4f1f4d08ce1702760d555f8255aaea534ed3f68366e68423bc06ae140f7aee"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdisp11manager-1.6.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ce8fee6c8b44634baef0d184ddd28cba173b44feab1a3391fb32f27704649da"
  end
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
