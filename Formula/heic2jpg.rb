class Heic2jpg < Formula
  desc "Automatically converts HEIC files to JPG"
  homepage "https://github.com/amerry19/heic2jpg"
  url "https://github.com/amerry19/heic2jpg/archive/refs/tags/v0.1-beta.tar.gz"
  sha256 "8530c4b2e6b727356fe7d8a9de9901fcd2c4e129cf6d090078f2837717377117"
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
