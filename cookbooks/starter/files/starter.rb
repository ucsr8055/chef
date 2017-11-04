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
