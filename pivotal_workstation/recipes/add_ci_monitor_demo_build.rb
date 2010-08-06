include_recipe "pivotal_workstation::install_ccrb"

run_unless_marker_file_exists("add_ci_monitor_to_cruise") do
  execute "Add ci_monitor project to cruise" do
    command "./cruise add cimonitor -r git://github.com/mkocher/cimonitor.git -s git"
    user WS_USER
    cwd "#{WS_HOME}/ccrb/"
  end
end