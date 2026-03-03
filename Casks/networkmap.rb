cask "networkmap" do
  version "0.0.1-alpha17"
  sha256 "071a2e75b87f8b08f5683abaf9f45d44ea541db85cb063bab82a25fc337fa6db"

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
