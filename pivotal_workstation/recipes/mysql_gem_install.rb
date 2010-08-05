run_unless_marker_file_exists("mysql_gem") do
  
  execute "install system mysql gem" do
    command "ARCHFLAGS='-arch x86_64' gem install --no-rdoc --no-ri  mysql -- --with-mysql-config=/usr/local/bin/mysql_config"
    user WS_USER
  end
end