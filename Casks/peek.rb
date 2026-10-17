cask "peek" do
  version "1.7.2"
  sha256 "e8eb88def930d32d960c0d3a88323945b7a699875b5aaacc9a33d9d1f30fa171"

  url "https://downloads.peeknotch.com/Peek-#{version}.dmg"
  name "Peek"
  desc "Notch control surface for music, timers, meetings and files"
  homepage "https://peeknotch.com/"

  livecheck do
    url "https://downloads.peeknotch.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Peek.app"

  uninstall quit: "com.innovailabs.peek"

  # Left behind on purpose: the Files shelf
  # (~/Library/Application Support/com.innovailabs.peek/Shelf) can hold the
  # only copy of a dropped file, and ~/Library/Application Support/Peek/agents
  # is the relay ~/.claude/settings.json may still point at. The license and
  # trial live in the Keychain and on the server, so zap resets neither.
  zap trash: [
    "~/Library/Application Support/com.innovailabs.peek/com.crashlytics",
    "~/Library/Caches/com.crashlytics.data/com.innovailabs.peek",
    "~/Library/Caches/com.innovailabs.peek",
    "~/Library/HTTPStorages/com.innovailabs.peek",
    "~/Library/Preferences/com.innovailabs.peek.plist",
    "~/Library/Preferences/group.com.innovailabs.peek.firebase.plist",
  ]
end
