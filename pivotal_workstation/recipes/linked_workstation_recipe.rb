log "Workstation Cookbook Linked Recipe Activated"

include_recipe "pivotal_workstation::bash_better_history"
include_recipe "pivotal_workstation::bash_path_order"
include_recipe "pivotal_workstation::bash_profile"
include_recipe "pivotal_workstation::bash_profile_no_sudo_gem_install"
include_recipe "pivotal_workstation::finder_display_full_path"
include_recipe "pivotal_workstation::git_config_global_defaults"
include_recipe "pivotal_workstation::inputrc"
include_recipe "pivotal_workstation::osx_turn_on_locate"
include_recipe "pivotal_workstation::textmate_set_defaults"
include_recipe "pivotal_workstation::workspace_directory"
include_recipe "pivotal_workstation::mysql"
include_recipe "pivotal_workstation::safari_preferences"
include_recipe "pivotal_workstation::terminal_preferences"
include_recipe "pivotal_workstation::google_chrome"
include_recipe "pivotal_workstation::text_mate"
include_recipe "pivotal_workstation::rvm"
include_recipe "pivotal_workstation::remove_garageband"
include_recipe "pivotal_workstation::turn_off_sleep_for_ci"
include_recipe "pivotal_workstation::bash_profile_is_ci_box"
include_recipe "pivotal_workstation::start_ci_command"
include_recipe "pivotal_workstation::install_ccrb"
include_recipe "pivotal_workstation::install_image_magick"
include_recipe "pivotal_workstation::mysql_gem_install"
include_recipe "pivotal_workstation::install_sphinx"
include_recipe "pivotal_workstation::mysql_create_db"
include_recipe "pivotal_workstation::set_pivots_disable_jsunit_flag"
include_recipe "pivotal_workstation::turn_on_ssh"
include_recipe "pivotal_workstation::linked_workstation_recipe"
include_recipe "pivotal_workstation::update_gems"
