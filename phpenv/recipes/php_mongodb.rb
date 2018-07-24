execute 'install_php_mongodb_driver' do
  command "pecl install mongodb"
  action :run
end

template 'mongodb.ini' do
  case node[:platform]
  when 'centos','redhat','fedora','amazon'
    path "/etc/php-5.6.d/mongodb.ini"
  when 'debian','ubuntu'
    path "/etc/php5/conf.d/mongodb.ini"
  end
  source 'mongodb.ini.erb'
  owner 'root'
  group 'root'
  mode 0644
  notifies :restart, resources(:service => 'apache2')
end
