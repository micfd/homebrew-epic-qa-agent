cask "epic-qa-agent" do
  version "0.2.10"
  sha256 "99bcd99e622e372632133b60f001a96ad06e08ccfb5140be948134099dccd593"

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
