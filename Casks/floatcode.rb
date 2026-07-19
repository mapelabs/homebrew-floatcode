cask "floatcode" do
  version "0.10.2-alpha"
  sha256 "35f787b539ec0ff6b9346f37d51e29fdf5a67739f62ab2ac2996dc32b510cbd9"

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
