cask "floatcode" do
  version "1.0.2-alpha"
  sha256 "0a900ff61fb3591fc75177868cd80ebaffd20ddf25a1ad9c7839ae420159b88a"

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
