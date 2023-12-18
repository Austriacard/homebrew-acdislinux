class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.4.0/linux-p11module-1.4.0.tar.gz"
  sha256 "2bba48ce8d04d7be5ba0d51d0e064f428e9bd289ffa04ec4002d4e2f1f0362fa"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.4.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a2fc78049003fb233b0532a2bcd807e47ca3173090202fdcb4250c1cacc14a62"
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
