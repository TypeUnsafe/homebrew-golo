require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'http://sourceforge.net/projects/golo-lang/files/0-preview6/golo-0-preview6-distribution.tar.gz'
  sha1 'd9fb4d82b21801ae4ecaac61bf723dafe848763c'
  version "0-preview6"

  def install
    rm_f Dir["bin/*.bat"]

    prefix.install_metafiles
    libexec.install %w(bin doc lib samples)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS.undent
      You should set the environment variable GOLO_HOME to
        #{libexec}
    EOS
  end
end
