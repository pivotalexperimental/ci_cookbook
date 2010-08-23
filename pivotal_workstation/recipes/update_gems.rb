include_recipe "pivotal_workstation::rvm"

script "update rubygems" do
  interpreter "bash"
  cwd WS_HOME
  user WS_USER
  code script_with_rvm(node["rvm"]["default_ruby"], "gem update")
end

["rake", "bundler", "mongrel", "SystemTimer"]. each do |gem_name|
  script "install gem #{gem_name}" do
    interpreter "bash"
    cwd WS_HOME
    user WS_USER
    code script_with_rvm(node["rvm"]["default_ruby"], "gem install #{gem_name} --no-ri --no-rdoc")
  end
end
