cask "floatcode" do
  version "0.6.1-alpha"
  sha256 "2cc062def6464101c38147fb9147dd68d1ca9aa4eb0b17c05f197e7e836fb6f2"

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
