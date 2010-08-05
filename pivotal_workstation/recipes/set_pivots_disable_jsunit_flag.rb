include_recipe "pivotal_workstation::bash_profile"

run_unless_marker_file_exists("bash_profile_disable_pivots_js_unit_flag") do
  template "#{BASH_INCLUDES_SUBDIR}/disable_js_unit_pivots_flag" do
    source "bash_profile_disable_js_unit_pivots_flag.erb"
    owner WS_USER
    backup false
  end
end