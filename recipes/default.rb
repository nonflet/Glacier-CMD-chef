##This recipe downloaded from github glacier-cmd and configures it automatically.
#YOu will need to change your AWS keys in attributes ( using roles or changing your attributes files permanently - see chef documentation)
#Author : Dmitry Lavrinenko nonflet@gmail.com

#Required libraries are glaciercorecalls and boto, use version 2.6.0 or newer.

#ensure , that boto is current ...

execute "upgrading boto" do
   command "sudo pip install boto --upgrade"
end
package "git"

git "/tmp/amazon-glacier-cmd-interface" do
  repository "https://github.com/uskudnik/amazon-glacier-cmd-interface.git"
  reference "master"
  action :sync
end

execute "installing glacier-cmd" do
  cwd "/tmp/amazon-glacier-cmd-interface"
  command "sudo python setup.py install"
end

template "/etc/glacier-cmd.conf" do
  source "glacier-cmd.conf.erb"
  owner "root"
  group "root"
  mode 0644
end
