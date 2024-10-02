class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.7.0/linux-p11module-1.7.0.tar.gz"
  sha256 "3dad10bc1e7f8c901aa3e21ad321d67dab472fc9f1969493ef7df483dedef373"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.7.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c9bc7936bd5d0f60ff8f6faab0b340afb6eeed3bc19bd5a64d430ba7b36f2020"
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
