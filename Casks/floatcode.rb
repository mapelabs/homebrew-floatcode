cask "floatcode" do
  version "0.9.8-alpha"
  sha256 "96b0785d50d74b7d2bbaf945d3a61b3d7cc5c068f2e32ec387880f6070b9a202"

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
