cask "gdocker" do
  version "0.1.0"
  sha256 "9ec9d05e083d446545e81d0d1ba28430ddabc361020fb152f8e650d678d189d7"

  url "https://github.com/Diaszano/gdocker/releases/download/v#{version}/GDocker-#{version}.zip"
  name "GDocker"
  desc "Native Docker GUI with a built-in MCP server for AI clients"
  homepage "https://github.com/Diaszano/gdocker"

  depends_on macos: :sonoma

  app "GDocker.app"

  # The app is ad-hoc signed, not notarized, so Gatekeeper would refuse to open it with the quarantine flag set.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/GDocker.app"]
  end

  zap trash: [
    "~/Library/Application Support/GDocker",
    "~/Library/Preferences/com.diaszano.gdocker.plist",
  ]
end
