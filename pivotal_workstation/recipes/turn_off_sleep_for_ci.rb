# this prevents the machine from sleeping.  Please don't use this
# on your workstation unless you mean to.

execute "Set display to sleep in two minutes" do
  command "/usr/bin/pmset displaysleep 120"
end

execute "Set the machine to never sleep" do
  command "/usr/bin/pmset sleep 0"
end

execute "cancel all scheduled sleeping" do
  command "/usr/bin/pmset repeat cancel"
end