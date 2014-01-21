require 'formula'

class M33ki < Formula
  head 'https://github.com/TypeUnsafe/m33ki.git', :branch => 'master'

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/m33ki"
  end
end
