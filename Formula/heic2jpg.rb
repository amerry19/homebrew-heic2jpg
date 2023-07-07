class Heic2jpg < Formula
  desc "Automatically converts HEIC files to JPG"
  homepage "https://github.com/amerry19/heic2jpg"
  url "https://github.com/amerry19/heic2jpg/archive/refs/tags/v0.1.2-beta.tar.gz"
  sha256 "59c123a5e8fe95343f0707d0606ec3a4869fe9b63e81eea2042639c8ba6bd6d9"
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
