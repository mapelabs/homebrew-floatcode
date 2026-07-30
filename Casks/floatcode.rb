cask "floatcode" do
  version "1.0.0-alpha"
  sha256 "b971d58af40d914bb1472942d6a72e01534cfad8206e9e8cf9d0ba0654f60803"

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
