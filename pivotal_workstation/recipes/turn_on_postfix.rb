execute "set postfix to always run" do
  command "defaults write /System/Library/LaunchDaemons/org.postfix.master.plist RunAtLoad -bool TRUE"
end

execute "set postfix to not run on demand" do
  command "defaults write /System/Library/LaunchDaemons/org.postfix.master.plist OnDemand -bool FALSE"
end

execute "start up postfix" do
  command "launchctl load /System/Library/LaunchDaemons/org.postfix.master.plist"
end

