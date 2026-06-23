cask "folio" do
  version "1.6.1"
  sha256 "bcf468084e1b038acdda4b5a54ca99d6d97c8ecad03371823338072c2b04ff54"

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
