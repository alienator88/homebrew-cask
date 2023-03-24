cask "sdm" do
  version "20.67.0,25CD2145AECBEAD9F2A128819B43CD1D1585AC87"
  sha256 "75FA6B739C696BEC8AA9B52CB96B0797E8BD37C85B85623C05FD6BDE16D49E12"

  url "https://downloads.strongdm.com/builds/desktop/#{version.csv.first}/darwin/universal/#{version.csv.second}/SDM-#{version.csv.first}.universal.zip"
  name "sdm"
  desc "Strongdm client"
  homepage "https://www.strongdm.com/"

  livecheck do
    url "https://app.strongdm.com/releases/desktop/darwin/0.0.0"
    strategy :page_match do |page|
      match = page.match(%r{https:.*?/(\h+)/SDM[._-]v?(\d+(?:\.\d+)+)\.universal\.zip}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "SDM.app"

  uninstall delete: "#{appdir}/SDM.app/Contents/Resources/sdm-socket"

  zap trash: [
    "~/.sdm",
    "/usr/local/bin/sdm",
    "~/Library/Application Support/SDM",
    "~/Library/Caches/com.electron.sdm*",
    "~/Library/Preferences/com.electron.sdm.plist",
    "~/Library/Saved Application State/com.electron.sdm.savedState",
  ]
end
