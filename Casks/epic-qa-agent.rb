cask "epic-qa-agent" do
  version "0.2.5"
  sha256 "fa290eac592e63b6a434c81400fa40503ce2e6e03b1d38ec61b8e041bb1ace8f"

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
