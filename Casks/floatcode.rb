cask "floatcode" do
  version "0.9.3-alpha"
  sha256 "fc71426e1f4865c765211eb867b74307472fbc56f1f2dd4487ebebc84ec66c1e"

  url "https://github.com/mapelabs/homebrew-floatcode/releases/download/v0.9.3-alpha/FloatCode_0.9.3-alpha_aarch64.dmg"
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
