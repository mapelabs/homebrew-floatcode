cask "floatcode" do
  version "0.9.9-alpha"
  sha256 "ad54e6f20a5fb36b9d4ff7d238ee48aac381a4e67b96b58f0734d88585e1884d"

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
