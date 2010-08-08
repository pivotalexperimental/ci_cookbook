class Chef::Resource::Script
  def script_with_rvm(rvm_version, command)
    <<-EOH
    export PATH=#{WS_HOME}/.rvm/gems/#{rvm_version}/bin:#{WS_HOME}/.rvm/gems/#{rvm_version}@global/bin:#{WS_HOME}/.rvm/rubies/#{rvm_version}/bin:#{WS_HOME}/.rvm/bin:$PATH
    sudo -u ci sh -c "#{command}"
    EOH
  end
end
