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
  
  depends_on JavaRequirement
  option "without-completions", "Disable bash/zsh completions"

  def install

    if build.head?
      # see https://github.com/golo-lang/golo-lang#building-from-sources
      rake "special:bootstrap"

      # specific installation (bin and lib are in the target/ folder)
      libexec.install %w(share samples target/appassembler/bin target/appassembler/lib)
    else
      libexec.install %w(bin doc lib share samples)
    end

    rm_f Dir["#{libexec}/bin/*.bat"]
    ENV["GOLO_HOME"] = libexec
    bin.env_script_all_files(libexec+"bin", :GOLO_HOME => ENV["GOLO_HOME"])
    bash_completion.install "#{libexec}/share/shell-completion/golo-bash-completion"
  
    if ENV["SHELL"].include? "zsh"
      zsh_completion.install "#{libexec}/share/shell-completion/golo-zsh-completion" => "_golo"
      cp "#{bash_completion}/golo-bash-completion", zsh_completion
    end
  end

  def caveats; <<-EOS.undent
For ZSH users, please add "golo" in yours plugins in ".zshrc"
    EOS
  end
end
