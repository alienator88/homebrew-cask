cask "pearcleaner" do
  version "1.2"
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip"
  name "Pearcleaner"
  desc "Utility to uninstall apps and clean-up leftover files"
  homepage "https://github.com/alienator88/Pearcleaner"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"

  uninstall quit:      "com.alienator88.Pearcleaner",
            launchctl: "com.alienator88.PearcleanerSentinel"

  zap trash: [
    "~/Library/Application Scripts/Pearcleaner",
  ]
end
