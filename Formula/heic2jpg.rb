class Heic2jpg < Formula
  desc "Configurable service that watches the filesystem and automatically converts HEIC files to JPGs."
  homepage "https://github.com/amerry19/heic2jpg"
  url "https://github.com/amerry19/heic2jpg/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "574a9810607c36161cedc971319ba885b53f4ca90a94276f4f8ee3d2869a5933"
  license "MIT"

  depends_on "imagemagick"
  depends_on "python@3.11"

  def install
    system "pip3", "install", "-r", "requirements.txt"
    bin.install "heic2jpg.py" => "heic2jpg"
    chmod 0755, bin/"heic2jpg" # Ensure executable permission
  end

  test do
    system "#{bin}/heic2jpg", "--version"
  end
end