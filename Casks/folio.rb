cask "folio" do
  version "1.6.0"
  sha256 "9d4a57bebcb58c8e70c10ce2d2b2824e59e8685d0b10740439df45c0a1acbb57"

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
