require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'http://search.maven.org/remotecontent?filepath=org/golo-lang/golo/0-preview9/golo-0-preview9-distribution.tar.gz'
  sha1 '3043714ca2d31572d2cbbcb86c44cdd85c40ecbf'
  version "0-preview9"

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
