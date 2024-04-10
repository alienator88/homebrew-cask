cask "mcbrew" do
  #version :latest
  version "0.2.1"
  sha256 :no_check
  
  # Version
  url "https://github.com/alienator88/McBrew/releases/download/#{version}/McBrew.zip"
  name "McBrew"
  desc "Utility to manage your homebrew formulae/casks from a native macos GUI"
  homepage "https://github.com/alienator88/McBrew"

  depends_on macos: ">= :ventura"

  app "McBrew.app"

  uninstall quit:      "com.alienator88.McBrew"

  zap trash: [
    "~/Library/Application Support/com.alienator88.McBrew",
  ]
end
