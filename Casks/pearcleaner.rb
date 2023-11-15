cask "pearcleaner" do
  version :latest
  sha256 :no_check

  url "https://github.com/alienator88/Pearcleaner/releases/#{version}/download/Pearcleaner.zip"
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
    "~/Library/Application Support/Pearcleaner",
  ]
end
