require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'https://github.com/golo-lang/golo-lang/releases/download/v0-preview7/golo-0-preview7-distribution.tar.gz'
  sha1 '522bd4a39544cd47b7a949d8df1d0387afac6a9f'
  version "0-preview7"

  def install
    rm_f Dir["bin/*.bat"]

    prefix.install_metafiles
    libexec.install %w(bin doc lib samples)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS.undent
      You should set-up JAVA_HOME to the valid JDK 7.0 (or newest)
      
      You should set the environment variable GOLO_HOME to
        #{libexec}
    EOS
  end
end
