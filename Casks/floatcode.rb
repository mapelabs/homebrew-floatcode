cask "floatcode" do
  version "0.8.3-alpha"
  sha256 "2c7bf9bab866767ea492fda2d502b00aaf5c369d51ee10e7139d01c39f6706ee"

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
