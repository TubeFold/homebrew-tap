cask "tubefold" do
  version "0.2"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/TubeFold/App/releases/download/v#{version}/TubeFold.zip",
      verified: "github.com/TubeFold/App/"
  name "TubeFold"
  desc "Markdown summaries of YouTube videos via your CLI model subscription"
  homepage "https://github.com/TubeFold"

  # Updates are delivered in-app via Sparkle; `brew upgrade` is a no-op once
  # the app can update itself. Keeps the cask from fighting the EdDSA appcast.
  auto_updates true
  # The app's deployment target is macOS 27. Bump the symbol here if the floor
  # changes; `:tahoe` (26) is the lowest symbol Homebrew currently knows.
  depends_on macos: :tahoe

  app "TubeFold.app"

  zap trash: [
    "~/Library/Application Support/TubeFold",
    "~/Library/Caches/com.tubefold.app",
    "~/Library/HTTPStorages/com.tubefold.app",
    "~/Library/Preferences/com.tubefold.app.plist",
    "~/Library/Saved Application State/com.tubefold.app.savedState",
  ]
end
