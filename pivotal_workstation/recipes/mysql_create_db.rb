execute "create database" do
  command "mysql -u root -p'password' -e 'create database if not exists pivots_development'"
end

execute "create database" do
  command "mysql -u root -p'password' -e 'create database if not exists pivots_test'"
end