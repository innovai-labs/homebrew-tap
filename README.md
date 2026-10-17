# Innovai Labs Homebrew tap

```sh
brew install --cask innovai-labs/tap/peek
```

[Peek](https://peeknotch.com) turns the MacBook notch into a glanceable control
surface: music, timers, your next meeting, files and on-device AI, one hover
away. It's a paid app with a 24-hour full trial — no account, no card. macOS 14
or later on Apple silicon.

- **Updates.** Peek updates itself, and the cask says so (`auto_updates`), so
  Homebrew doesn't fight its updater.
- **Uninstalling.** `brew uninstall --cask peek` removes the app. `--zap` also
  removes its settings and caches, but leaves the Files shelf and the Claude
  Code relay in place; the cask says why. Neither resets the trial or a
  license.
- **This repo is written by Peek's release pipeline** on every release; edits
  made here by hand are overwritten.

Questions or problems: [support@peeknotch.com](mailto:support@peeknotch.com).
