cask "pearcleaner" do
  #version :latest
  version "3.7.0"
  sha256 :no_check

  # Latest
  #url "https://github.com/alienator88/Pearcleaner/releases/#{version}/download/Pearcleaner.zip"
  # Version
  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip"
  name "Pearcleaner"
  desc "Utility to uninstall apps and clean-up leftover files"
  homepage "https://github.com/alienator88/Pearcleaner"

  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"

  uninstall quit:      "com.alienator88.Pearcleaner",
            launchctl: "com.alienator88.PearcleanerSentinel"

  zap trash: [
    "~/Library/Application Support/Pearcleaner",
  ]
end
