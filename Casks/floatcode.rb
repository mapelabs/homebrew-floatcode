cask "floatcode" do
  version "0.6.0-alpha"
  sha256 "666b2824e6af33816befbff862f21ea2d00f5cc1a627be53dee731b6e96d4a7f"

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
