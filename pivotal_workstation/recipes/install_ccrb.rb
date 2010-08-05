
run_unless_marker_file_exists("clone_ccrb") do
  execute "clone ccrb" do
    command "git clone git://github.com/thoughtworks/cruisecontrol.rb.git ~/ccrb"
    user WS_USER
  end
  
  remote_directory "~/.cruise" do
    source "cruise"
    owner WS_USER
  end
  # This doesn't work yet just edit the template by hand
  # template "#{WS_HOME}/.cruise/site_config.rb" do
  #   source "site_config.erb"
  #   owner WS_USER
  #   backup false
  # end
end