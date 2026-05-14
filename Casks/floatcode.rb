cask "floatcode" do
  version "0.7.3"
  sha256 "ce676a3dbd36d20552b47528e02012ac55d66710525899bcdc3c27568bc7cd37"

  url "https://github.com/mapelabs/homebrew-floatcode/releases/download/v0.7.3/FloatCode_0.7.3_aarch64.dmg"
  name "FloatCode"
  desc "Open-source AI-native terminal emulator"
  homepage "https://floatcode.app"

  app "FloatCode.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FloatCode.app"],
                   sudo: false
  end
end
