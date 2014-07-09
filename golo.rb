require 'formula'

class Golo < Formula
  homepage 'http://golo-lang.org'
  url 'http://search.maven.org/remotecontent?filepath=org/golo-lang/golo/1.0.0/golo-1.0.0-distribution.tar.gz'
  sha1 'ee7492bf2e3aa63140ad4f4abece100bb6dbf4ad'
  version "1.0.0"

  head do
    # SNAPSHOT version
    url "https://github.com/golo-lang/golo-lang.git"

    depends_on 'maven'
  end

  option 'without-completions', 'Disable bash/zsh completions'

  def install

    if build.head?
      # see https://github.com/golo-lang/golo-lang#building-from-sources
      rake "special:bootstrap"

      # specific installation (bin and lib are in the target/ folder)
      libexec.install %w(share samples target/appassembler/bin target/appassembler/lib)

      # workaround with --HEAD -> permissions are a mess
      (libexec/'bin/golo').chmod 0755
      (libexec/'bin/vanilla-golo').chmod 0755
    else
      libexec.install %w(bin doc lib share samples)
    end

    rm_f Dir["#{libexec}/bin/*.bat"]
    bin.install_symlink Dir["#{libexec}/bin/*"]

    if build.with? 'completions'
      bash_completion.install "#{libexec}/share/shell-completion/golo-bash-completion"
      zsh_completion.install "#{libexec}/share/shell-completion/golo-zsh-completion" => '_golo'
      cp "#{bash_completion}/golo-bash-completion", zsh_completion
    end

  end

  def caveats
    s = <<-EOS.undent
      You should set-up JAVA_HOME to the valid JDK 7.0 (or newest)

      You should set the environment variable GOLO_HOME to
        #{libexec}
    EOS

    s << "\n" << zsh_caveats if build.with? 'completions'
    return s
  end

  def zsh_caveats; <<-EOS.undent
    For ZSH users, please add "golo" in yours plugins in ".zshrc"
    EOS
  end
end
