class Acdisp11manager < Formula
 desc "ACDIS PKCS11 Manager Linux"
 homepage "https://www.austriacard.at"
 url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.0/linux-p11manager-1.5.0.tar.gz"
 sha256 "e913d433d13478eb887396dd638a99583784ca9bb5a0f3e74f358ff26f00bd5a"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdisp11manager-1.5.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6bc03ffe6141f3c752333456c2f89095ed3992ca216aa2f329097a284626cb9f"
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
