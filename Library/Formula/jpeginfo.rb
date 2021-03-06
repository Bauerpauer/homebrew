require 'formula'

class Jpeginfo < Formula
  homepage 'http://www.kokkonen.net/tjko/projects.html'
  url 'http://www.kokkonen.net/tjko/src/jpeginfo-1.6.1.tar.gz'
  md5 '344be10d6b16ec559c5d8b7e3707241f'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system("#{bin}/jpeginfo --help")
  end
end
