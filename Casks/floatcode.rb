cask "floatcode" do
  version "0.9.7-alpha"
  sha256 "e754b80ea77ce80ab1d03813bc80689b44240e10ebb658df37832c9564fc0364"

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
