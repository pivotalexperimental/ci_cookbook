include_recipe "pivotal_workstation::turn_on_postfix"
include_recipe "pivotal_workstation::rvm"
include_recipe "pivotal_workstation::update_gems"

run_unless_marker_file_exists("clone_ccrb") do
  execute "clone ccrb" do
    command "git clone git://github.com/thoughtworks/cruisecontrol.rb.git ~/ccrb"
    user WS_USER
  end

  execute "create .ccrb directory" do
    command "mkdir ~/.cruise || true"
    user WS_USER
  end
  
  execute "create data.version file" do
    command "echo 2 > #{WS_HOME}/.cruise/data.version"
    user WS_USER
  end
  
  template "#{WS_HOME}/.cruise/site.css" do
    source "site.css.erb"
    owner WS_USER
  end
  
  template "#{WS_HOME}/.cruise/site_config.rb" do
    source "site_config.rb.erb"
    owner WS_USER
  end
  
  script "Start Cruise" do
    interpreter "bash"
    code script_with_rvm(node["rvm"]["default_ruby"], "./daemon/cruise start")
    user WS_USER
    cwd "#{WS_HOME}/ccrb/"
  end
end
