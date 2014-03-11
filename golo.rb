require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'http://search.maven.org/remotecontent?filepath=org/golo-lang/golo/0-preview11/golo-0-preview11-distribution.tar.gz'
  sha1 '3a016ffb72b3d8696f22b5878c31763a8e05d9a4'
  version "0-preview11"
  
  def install
    rm_f Dir["bin/*.bat"]

    prefix.install_metafiles
    
    bash_completion.install 'share/shell-completion/golo-bash-completion'
    zsh_completion.install 'share/shell-completion/golo-zsh-completion' => '_golo'
    cp "#{bash_completion}/golo-bash-completion", zsh_completion
    
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
