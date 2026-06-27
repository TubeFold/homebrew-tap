# TubeFold Homebrew Tap

Homebrew cask for [TubeFold](https://github.com/TubeFold) — a macOS app that turns
YouTube videos into Markdown summaries using your existing `codex` / `claude` CLI
subscription (no API key).

## Install

```bash
brew install --cask tubefold/tap/tubefold
```

That's shorthand for the `TubeFold/homebrew-tap` repository — Homebrew expands
`tubefold/tap` to `github.com/tubefold/homebrew-tap` automatically.

## Update

The app updates itself in place via [Sparkle](https://sparkle-project.org), so
`brew upgrade` is normally a no-op (the cask is marked `auto_updates true`). To
reinstall the latest cask manually:

```bash
brew reinstall --cask tubefold/tap/tubefold
```

## Uninstall

```bash
brew uninstall --cask tubefold/tap/tubefold
# also remove app data (~/Library/Application Support/TubeFold, prefs, caches):
brew uninstall --zap --cask tubefold/tap/tubefold
```

## Notes

- The app is distributed as a notarized, stapled Developer ID build — not via the
  Mac App Store (it disables the sandbox and shells out to your local CLI tools).
- `version`, `url`, and `sha256` in [`Casks/tubefold.rb`](Casks/tubefold.rb) are
  bumped on each release (eventually by CI in the `TubeFold/App` repo).
