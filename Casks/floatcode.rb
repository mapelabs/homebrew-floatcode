cask "floatcode" do
  version "0.9.1-alpha"
  sha256 "c52dd522c1b513e5e5eb94e82a41e9a23199b525117663777b608719d2e0559b"

  url "https://github.com/mapelabs/homebrew-floatcode/releases/download/v0.9.1-alpha/FloatCode_0.9.1-alpha_aarch64.dmg"
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
