def gem_script(rvm_version, gem_command)
  <<-EOH
  export PATH=#{WS_HOME}/.rvm/gems/#{rvm_version}/bin:#{WS_HOME}/.rvm/gems/#{rvm_version}@global/bin:#{WS_HOME}/.rvm/rubies/#{rvm_version}/bin:#{WS_HOME}/.rvm/bin:$PATH
  sudo -u ci sh -c "gem #{gem_command}"
  EOH
end