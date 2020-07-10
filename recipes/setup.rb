package 'tree' do
  action :install
end

package 'ntp' do
  action [ :install ]
end

service 'ntpd' do
  action [ :enable, :start ]
end


file '/etc/motd' do
  content 'This server is the property of Chandra'
  mode '0777'
  owner 'root'
  group 'root'
end

package 'git'

package 'nano'
