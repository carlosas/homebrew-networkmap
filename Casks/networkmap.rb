cask "networkmap" do
  version "0.0.1-alpha10"
  sha256 "752b01c9351eed46ec3dede49253d7a7aadb06de20a0ccb657c1e75b05bac2c2"

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
