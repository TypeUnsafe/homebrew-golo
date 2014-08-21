require "formula"

class JavaRequirement < Requirement
  fatal true

  satisfy :build_env => false do
    system "/usr/libexec/java_home", "-v", "1.7"
  end

  def message; <<-EOS.undent
    Could not find a JDK (i.e. not a JRE)

    Do one of the following:
    - install a JDK that is detected with /usr/libexec/java_home
    - set the JAVA_HOME environment variable
    EOS
  end
end

class Golo < Formula
  homepage "http://golo-lang.org"
  url "http://search.maven.org/remotecontent?filepath=org/golo-lang/golo/1.0.0/golo-1.0.0-distribution.tar.gz"
  sha1 "ee7492bf2e3aa63140ad4f4abece100bb6dbf4ad"

  head do
    url "https://github.com/golo-lang/golo-lang.git"
    depends_on "maven"
  end
  
  depends_on :java
  depends_on JavaRequirement

  def install
    if build.head?
      rake "special:bootstrap"
      libexec.install %w(target/appassembler/bin target/appassembler/lib)
    else
      libexec.install %w(bin doc lib)
    end
    libexec.install %w(share samples)

    rm_f Dir["#{libexec}/bin/*.bat"]
    bin.env_script_all_files(libexec+"bin", :GOLO_HOME => libexec)
    bash_completion.install "#{libexec}/share/shell-completion/golo-bash-completion"
  
    zsh_completion.install "#{libexec}/share/shell-completion/golo-zsh-completion" => "_golo"
    cp "#{bash_completion}/golo-bash-completion", zsh_completion
  end

  def caveats
    if ENV["SHELL"].include? "zsh" then <<-EOS.undent
For ZSH users, please add "golo" in yours plugins in ".zshrc"
      EOS
    end
  end
end
