cask "viz" do
  version "1.6"
  sha256 :no_check

  # Version
  url "https://github.com/alienator88/Viz/releases/download/#{version}/Viz.zip"
  name "Viz"
  desc "Utility to extract text from images, videos, qr/barcodes"
  homepage "https://github.com/alienator88/Viz"

  depends_on macos: ">= :monterey"

  app "Viz.app"

  uninstall quit:      "com.alienator88.Viz"
  
  zap trash: [
    "~/Library/Application Support/com.alienator88.Viz",
  ]
end
