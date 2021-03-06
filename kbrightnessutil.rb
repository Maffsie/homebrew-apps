class Kbrightnessutil < Formula
  homepage "https://github.com/MaffC/kbrightnessutil-osx"
  url "https://github.com/MaffC/kbrightnessutil-osx/archive/v0.2.tar.gz"
  sha256 "3738576610ec23520fa7148b842c9632eab763d69fd8a3a54f8cc87ea6e3d370"
  head "https://github.com/MaffC/kbrightnessutil-osx.git"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "kbbutil", "-n"
  end
end
