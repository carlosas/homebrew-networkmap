cask "networkmap" do
  version "0.0.1-alpha8"
  sha256 "82dcaf18bc52f30a04e7f55b1bc5efe98e023ca80a7fc6611c07fac1559858d7"

  url "https://github.com/carlosas/networkmap/releases/download/v#{version}/NetworkMap-#{version}.dmg"
  name "NetworkMap"
  desc "macOS menu bar app that displays network information in real-time"
  homepage "https://github.com/carlosas/networkmap"

  app "NetworkMap.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/NetworkMap.app"]
  end
end
