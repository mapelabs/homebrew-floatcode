cask "floatcode" do
  version "0.8.0-alpha"
  sha256 "4127dae1ddd0c31a1b2fb70902dd5151cbe2a651140eb500c0481b118365dfcb"

  url "https://storage.googleapis.com/floatcode.firebasestorage.app/releases/FloatCode.dmg"
  name "FloatCode"
  desc "Floating AI terminal that stays out of your way"
  homepage "https://floatcode.app"

  app "FloatCode.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FloatCode.app"],
                   sudo: false
  end
end
