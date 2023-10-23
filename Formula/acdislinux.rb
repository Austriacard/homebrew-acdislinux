class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.0.0/linux-1.0.0.tar.gz"
  sha256 "ee2608295433fd93610eb6443f6ae3c6eb38a498e6f9efe0f7582b3c4dd7601d"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.0.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "56822c1854c58452aabf59614b38ebeb2afcf3129052d08babd6ba0d1a084373"
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
