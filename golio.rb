require 'formula'

class Golio < Formula
  head 'https://github.com/k33g/golio.git', :branch => 'master'

  def install
    # setup absolute path for 'homebrew' golio
    inreplace 'golio' do |s|
      s.gsub! /^TOOLS_PATH.*/, "TOOLS_PATH=#{libexec}"
    end

    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/golio"
  end
end
