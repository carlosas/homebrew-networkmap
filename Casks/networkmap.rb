cask "networkmap" do
  version "0.0.1-alpha18"
  sha256 "b786535283980b7cccd803b174a3a1bb2c9b9b098cb6510262285cee7a3c8263"

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
