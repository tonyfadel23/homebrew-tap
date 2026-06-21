cask "folio" do
  version "1.5.0"
  sha256 "5a8e9f1363d4d480cc7cfac8df214ad52e9446ec98f4ba584eca59ccb5df180f"

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
