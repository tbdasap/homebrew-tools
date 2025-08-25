class SputavaakNr < Formula
  include Language::Python::Virtualenv

  desc "Sputavaak NoiseReducer CLI"
  homepage "https://github.com/tbdasap/python-tools"
  url "https://github.com/tbdasap/python-tools/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "2a7f8cb6d29923289e5aec2adc9311fa53dc8350"
  license "MIT"

  depends_on "python@3.12"

  ##  resource: Insert dependency requirements here. 
  
  
  ## End dependency
  def install
    cd "sputavaak-nr" do
      virtualenv_install_with_resources
    end
  end

  test do
    system bin/"sputavaak-nr", "--help"
  end
end
