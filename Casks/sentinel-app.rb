cask "sentinel-app" do
  version "2.1"
  sha256 :no_check

  # Version
  url "https://github.com/alienator88/Sentinel/releases/download/#{version}/Sentinel.zip"
  name "Sentinel"
  desc "Utility to control Gatekeeper via a GUI"
  homepage "https://github.com/alienator88/Sentinel"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Sentinel.app"

  uninstall quit:      "com.alienator88.sentinel"
  
  zap trash: [
    "~/Library/Application Support/com.alienator88.sentinel",
  ]
end
