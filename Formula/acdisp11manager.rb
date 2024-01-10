class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.4.0/linux-p11manager-1.4.0.tar.gz"
 sha256 "86b3ebc4b4881932fbb8137c98d564aade29548b00e6054fce3bde332f960146"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdisp11manager-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ddfe9ca6b18f527aa6350ec829f934363f64dd9a7dd0f3f341761151b2d8976d"
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
