cask "floatcode" do
  version "0.8.1-alpha"
  sha256 "464064b91ced328f4f66b74cf48ee12f5109bdd5d1292ef6f6e5f8e31dbc46d4"

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
