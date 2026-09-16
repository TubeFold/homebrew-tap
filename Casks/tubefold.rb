cask "tubefold" do
  version "0.9.6"
  sha256 "527ae4bf4afbd563cb7707fb5c328fc2ddb2aed4a0d1c9634141ba82e1b1f465"

  url "https://github.com/TubeFold/App/releases/download/v#{version}/TubeFold.zip"
  name "TubeFold"
  desc "Turn YouTube videos into Markdown notes with your own Codex or Claude CLI"
  homepage "https://github.com/TubeFold"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app supports in-place updates via Sparkle.
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
