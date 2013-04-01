require 'formula'

class Gogolo < Formula
  head 'https://github.com/k33g/gogolo.git', :branch => 'master'
  depends_on 'golo'

  def install
    libexec.install 'gogolo.sh'
    bin.install_symlink Dir["#{libexec}/*"]
  end
end
