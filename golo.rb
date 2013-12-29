require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'http://search.maven.org/remotecontent?filepath=org/golo-lang/golo/0-preview10/golo-0-preview10-distribution.tar.gz'
  sha1 '4b77201081afa4cd404a11644480f11945d41396'
  version "0-preview10"
  
  def install
    rm_f Dir["bin/*.bat"]

    prefix.install_metafiles
    libexec.install %w(bin doc lib share samples)
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
