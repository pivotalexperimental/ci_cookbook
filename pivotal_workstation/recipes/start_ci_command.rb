
run_unless_marker_file_exists("start_ci_command") do
  template "#{WS_HOME}/start_ci.command" do
    source "start_ci_command.erb"
    owner WS_USER
    backup false
  end
  
  execute "add start_ci.command to startup items" do
    command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '<dict><key>Hide</key><false/><key>Path</key><string>#{WS_HOME}/start_ci.command</string></dict>'"
    user WS_USER
  end
end