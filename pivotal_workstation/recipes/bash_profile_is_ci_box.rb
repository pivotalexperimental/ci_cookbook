include_recipe "pivotal_workstation::bash_profile"

run_unless_marker_file_exists("bash_profile_is_ci_box") do
  template "#{BASH_INCLUDES_SUBDIR}/is_ci_box" do
    source "bash_profile_is_ci_box.erb"
    owner WS_USER
    backup false
  end
end