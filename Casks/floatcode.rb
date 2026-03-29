cask "floatcode" do
  version "0.2.2-alpha"
  sha256 "9230aa34d993d89abbb58b6b21e367b7f359d26a241c0eccb631fe9b337a0340"

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
