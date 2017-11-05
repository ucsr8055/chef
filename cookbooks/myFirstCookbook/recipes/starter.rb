package 'vim' do
  action :install
end

package 'apache2' do
  action :install
end

service 'apache2' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content 'Hello world'
  owner 'root'
  mode '0755'
end

file '/etc/motd' do
  content 'welcome to my server: chandra '
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'Command-Test' do
  command 'echo blah >> /etc/motd'
  action :run
  only_if { ::File.exists?('/etc/motd') }
end
