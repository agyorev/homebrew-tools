class Codesearch < Formula
  include Language::Python::Virtualenv
  desc "Command-line code search tool"
  homepage "https://github.com/agyorev/codesearch"
  url "https://github.com/agyorev/codesearch/archive/v0.1.tar.gz"
  sha256 "752ef92b4c93c4003f567eecf889a49b41a2163422277f3d9a50181415a62190"

  bottle :unneeded

  depends_on :python if MacOS.version <= :snow_leopard

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/4a/85/db5a2df477072b2902b0eb892feb37d88ac635d36245a72a6a69b23b383a/PyYAML-3.12.tar.gz"
    sha256 "592766c6303207a20efc445587778322d7f73b161bd994f227adaa341ba212ab"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/codesearch", "--version"
  end
end
