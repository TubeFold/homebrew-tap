cask "tubefold" do
  version "0.4"
  sha256 "c8aab8f8f7a73453ef2a3c99e544b014770e37f8eddafe5facce751329d93e15"

  url "https://github.com/TubeFold/App/releases/download/v#{version}/TubeFold.zip",
      verified: "github.com/TubeFold/App/"
  name "TubeFold"
  desc "Turn YouTube videos into Markdown notes with your own Codex or Claude CLI"
  homepage "https://github.com/TubeFold"

  # Updates are delivered in-app via Sparkle; `brew upgrade` is a no-op once
  # the app can update itself. Keeps the cask from fighting the EdDSA appcast.
  auto_updates true
  # Matches the app's deployment target (macOS 26, Tahoe). Bump if it changes.
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
