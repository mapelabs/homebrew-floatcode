cask "floatcode" do
  version "0.5.1-alpha"
  sha256 "0c491683bb44e2d96eefa5049e5d52e3687852d8a2aab784d4c17d8cbfc5bda3"

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
