class Acdislinux < Formula
  desc "ACDIS PKCS11 Linux"
  homepage "https://www.austriacard.at"
  url "https://github.com/Austriacard/ACDIS-PKCS11/releases/download/1.1.0/linux-1.1.0.tar.gz"
  sha256 "d2757bb52304e62bf46ae47e59c48be406d0c3048a733652c279a7f37650d973"

  bottle do
    root_url "https://github.com/Austriacard/homebrew-acdislinux/releases/download/acdislinux-1.1.0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c762c313dc834f6ba8d3980239a8563b3e33986ebe40c0ad0238ffdcdce221f2"
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
