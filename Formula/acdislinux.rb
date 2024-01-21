class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.5.0/linux-p11module-1.5.0.tar.gz"
  sha256 "c0fba0056b38a0a00507a3e3824ed20a4d26f2f93720c1b4464ab53962324ce4"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.5.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "18cc2157b3f8c6732464903cf7832d20ecdea14c0d1431904327d74831b603cd"
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
