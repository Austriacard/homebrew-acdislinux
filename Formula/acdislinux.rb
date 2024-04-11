class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.6.0/linux-p11module-1.6.0.tar.gz"
  sha256 "1e3cbf0747716f9f2fabb5e7844f18087986138013b4d6eec0f4b7c31e997e77"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.6.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "edab0872613228170d8c6cc9037c52ba84599db67dd93b1afcd5aa315921a4bb"
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
