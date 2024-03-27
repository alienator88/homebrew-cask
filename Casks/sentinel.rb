cask "sentinel" do
  version "1.3"
  sha256 :no_check

  # Version
  url "https://github.com/alienator88/Sentinel/releases/download/#{version}/Sentinel.zip"
  name "Sentinel"
  desc "Utility to control Gatekeeper via a GUI"
  homepage "https://github.com/alienator88/Sentinel"

  depends_on macos: ">= :monterey"

  app "Sentinel.app"

  uninstall quit:      "com.alienator88.sentinel"
  
  zap trash: [
    "~/Library/Application Support/com.alienator88.sentinel",
  ]
end
