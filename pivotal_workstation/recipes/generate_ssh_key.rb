execute "Generate SSH keys for project" do
  command "ssh-keygen -t rsa -N '' -f ~/.ssh/id_github_#{node["ci_hostname"]}"
  user WS_USER
  not_if do File.exists?("#{WS_HOME}/.ssh/id_github_#{node["ci_hostname"]}") end
end

template "#{WS_HOME}/.ssh/config" do
  source "ssh_config.erb"
  owner WS_USER
end
  