cask "folio" do
  version "1.2.2"
  sha256 "1ed028ef4984a6325ca2c2819970cc59adb34c83a30c523f1affb1ca50ad3b4f"

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
