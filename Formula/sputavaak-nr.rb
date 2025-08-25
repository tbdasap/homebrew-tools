class SputavaakNr < Formula
  include Language::Python::Virtualenv

  desc "Sputavaak NoiseReducer CLI"
  homepage "https://github.com/tbdasap/python-tools"
  url "https://github.com/tbdasap/python-tools/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "93b28527b4b9d65eaf872852b4351156af29f875f8ca0400f14cc62498b83021"
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
