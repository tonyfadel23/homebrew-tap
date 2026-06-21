# tonyfadel23/tap

Homebrew Cask tap for Tony Fadel's macOS apps.

## Install

```bash
brew install --cask tonyfadel23/tap/folio
```

Or tap once and install by short name:

```bash
brew tap tonyfadel23/tap
brew install --cask folio
```

Homebrew strips the macOS quarantine bit automatically, so no Gatekeeper "unidentified developer" dance on first launch — the apps run as if they were notarized.

## Available casks

| Cask | Description |
|------|-------------|
| [folio](Casks/folio.rb) | Lightweight native macOS file browser and previewer |

## Update

```bash
brew upgrade --cask folio
```

`brew update` checks for new versions automatically; the cask's `livecheck` block tracks the upstream GitHub Releases page.

## Uninstall

```bash
brew uninstall --cask folio
brew uninstall --zap --cask folio   # also remove app preferences
```

## How this tap stays current

Each app's release is published as a GitHub Release with a `.dmg` asset; the cask points at the asset URL by version. When a new version ships, update the cask's `version` and `sha256` fields. The `sha256` is shown in the release asset's `digest` field via `gh release view vX.Y.Z --json assets`.
