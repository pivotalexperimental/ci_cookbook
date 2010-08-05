
execute "gem update" do
  command "gem update"
  user WS_USER
end

execute "gem install rake" do
  command "gem install rake"
  user WS_USER
end

execute "gem install bundler" do
  command "gem install bundler"
  user WS_USER
end
