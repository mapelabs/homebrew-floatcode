cask "floatcode" do
  version "0.9.2-alpha"
  sha256 "af017f0fa13d7f731492d52888b57af80f6396b31497aeb08a6c970cc4756967"

  url "https://github.com/mapelabs/homebrew-floatcode/releases/download/v0.9.2-alpha/FloatCode_0.9.2-alpha_aarch64.dmg"
  name "FloatCode"
  desc "Open-source AI-native terminal emulator"
  homepage "https://floatcode.app"

  app "FloatCode.app"

  postflight do
    # Remove quarantine attribute so macOS allows the unsigned app on first launch
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FloatCode.app"],
                   sudo: false
  end
end
