cask "pearcleaner" do
  version "4.0.2"
  sha256 "8a0b27d8c44e49e54d799e53552f99f48866f36ca95738a9f182a481cad8eab9"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip",
      verified: "github.com/alienator88/Pearcleaner/"
  name "Pearcleaner"
  desc "Utility to uninstall apps and remove leftover files from old/uninstalled apps"
  homepage "https://itsalin.com/appInfo/?id=pearcleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"

  uninstall launchctl: "com.alienator88.PearcleanerSentinel",
            quit:      "com.alienator88.Pearcleaner"

  zap trash: "~/Library/Application Support/Pearcleaner"
end
