cask "folio" do
  version "1.7.0"
  sha256 "4fc376da03a9d33f2341c7f99f85d8df26d54dbf21b8fa50d77b6c0a99807dac"

  url "https://github.com/tonyfadel23/folio/releases/download/v#{version}/Folio-#{version}.dmg",
      verified: "github.com/tonyfadel23/folio/"
  name "Folio"
  desc "Lightweight native macOS file browser and previewer"
  homepage "https://github.com/tonyfadel23/folio"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Folio.app"

  zap trash: [
    "~/Library/Preferences/com.tonyfadel.folio.plist",
    "~/Library/Saved Application State/com.tonyfadel.folio.savedState",
  ]
end
