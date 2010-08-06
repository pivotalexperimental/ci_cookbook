include_recipe "pivotal_workstation::rvm"

def gem_script(rvm_version, gem_command)
  <<-EOH
  export PATH=#{WS_HOME}/.rvm/gems/#{rvm_version}/bin:#{WS_HOME}/.rvm/gems/#{rvm_version}@global/bin:#{WS_HOME}/.rvm/rubies/#{rvm_version}/bin:#{WS_HOME}/.rvm/bin:$PATH
  sudo -u ci sh -c "gem #{gem_command}"
  EOH
end

script "update rubygems" do
  interpreter "bash"
  cwd WS_HOME
  user WS_USER
  code gem_script(node["rvm"]["default_ruby"], "update")
end

["rake", "bundler", "mongrel"]. each do |gem_name|
  script "install gem #{gem_name}" do
    interpreter "bash"
    cwd WS_HOME
    user WS_USER
    code gem_script(node["rvm"]["default_ruby"], "install #{gem_name}")
  end
end