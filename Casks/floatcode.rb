cask "floatcode" do
  version "0.5.0-alpha"
  sha256 "fe9b53a661b803f475b94172fbd92bf1e98a1fce77c6b656f2187bde887e09fe"

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
