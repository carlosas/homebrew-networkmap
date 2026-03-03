cask "networkmap" do
  version "0.0.1-alpha14"
  sha256 "37874050c1838c5c4cd9de885b5fb5b4b8d669eed5ca8b62b967541bd13f4d45"

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
