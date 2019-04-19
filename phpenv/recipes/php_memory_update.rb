template 'php_memory_update.ini' do
  case node[:platform]
  path "/etc/php-5.6.d/php_memory_update.ini"
  source 'php_memory_update.ini.erb'
  owner 'root'
  group 'root'
  mode 0644
  notifies :restart, resources(:service => 'apache2')
end
