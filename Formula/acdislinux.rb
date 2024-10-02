class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/linux-p11module-1.7.0.tar.gz"
  sha256 "b7089282c9eba5f31eb84603a0e27c43ba4e78686aee220800116aadd93a353c"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.7.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "af2f4459b18463d1e9e5a61c68b74e5effb4fab2cc93f561d8ae370d20e5b1bf"
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
