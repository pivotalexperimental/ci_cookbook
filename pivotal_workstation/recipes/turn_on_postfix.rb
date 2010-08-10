execute "unload postfix" do
  command "launchctl unload /System/Library/LaunchDaemons/org.postfix.master.plist"
end

execute "set postfix to always run" do
  command "defaults write /System/Library/LaunchDaemons/org.postfix.master.plist RunAtLoad -bool true"
end

execute "set postfix to not run on demand" do
  command "defaults write /System/Library/LaunchDaemons/org.postfix.master.plist OnDemand -bool false"
end

execute "start up postfix" do
  command "launchctl load /System/Library/LaunchDaemons/org.postfix.master.plist"
end

