require 'formula'

class M33ki < Formula
  head 'https://github.com/TypeUnsafe/m33ki.git', :branch => 'master'

  def install
    # setup absolute path for 'homebrew' m33ki
    inreplace 'm33ki' do |s|
      s.gsub! /^TOOLS_PATH.*/, "TOOLS_PATH=#{libexec}"
    end

    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/m33ki"
  end
end
