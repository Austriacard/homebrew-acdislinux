class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.3.0/linux-1.3.0.tar.gz"
  sha256 "7ab579bafd5018702d04c0d59d3168d9f1a3f648a8f57bceac427bb68b8dfa87"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.3.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6d74c0fb55b1c51594871b8f1f5271bcb0f629dd0272f11c61f5f41082f47c69"
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
