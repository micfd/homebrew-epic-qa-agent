cask "epic-qa-agent" do
  version "0.2.11"
  sha256 "d6850f541a205db0a529531bdbe755ce90757c3a2bdb775d01a9f22313284b05"

  url "https://epic-qa-prod-2b6d4032.s3.us-east-1.amazonaws.com/releases/v#{version}/epic-qa-agent-v#{version}.dmg"
  name "Epic QA Agent"
  desc "Local runner for Epic QA CHROME_MCP test cases"
  homepage "https://github.com/micfd/epic-qa"

  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: "google-chrome"

  app "Epic QA Agent.app"

  zap trash: [
    "~/Library/Application Support/Epic QA Agent",
    "~/Library/Preferences/com.epiccharging.epic-qa-agent.plist",
    "~/Library/Caches/com.epiccharging.epic-qa-agent",
    "~/Library/Caches/com.epiccharging.epic-qa-agent.ShipIt",
    "~/.epic-qa-chrome",
  ]
end
