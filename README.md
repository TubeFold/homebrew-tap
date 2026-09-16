# TubeFold Homebrew Tap

Homebrew cask for [TubeFold](https://github.com/TubeFold) — a local-first, open-source
macOS app that turns YouTube videos into structured Markdown notes using your existing
Codex CLI or Claude Code subscription (no API key).

## Install

```bash
brew install --cask tubefold/tap/tubefold
```

That's shorthand for the `TubeFold/homebrew-tap` repository — Homebrew expands
`tubefold/tap` to `github.com/tubefold/homebrew-tap` automatically.

## Update

The app updates itself in place via [Sparkle](https://sparkle-project.org).
The cask declares this with `auto_updates true`; it does not disable Homebrew
updates. To explicitly upgrade it through Homebrew:

```bash
brew update
brew upgrade --cask tubefold/tap/tubefold
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
- `version` and `sha256` in [`Casks/tubefold.rb`](Casks/tubefold.rb) are
  updated automatically by the release workflow in `TubeFold/App`; the download
  URL uses that version. Downloads are verified against the SHA-256 checksum.
- `brew livecheck --cask tubefold/tap/tubefold` checks the latest stable
  GitHub release, including this auto-updating cask.

## Validation

CI runs Homebrew style checks and a strict online audit on macOS for cask changes
and release bumps. To run them locally after checking out changes in the tap:

```bash
brew style --cask tubefold/tap/tubefold
brew audit --cask --strict --online tubefold/tap/tubefold
```
