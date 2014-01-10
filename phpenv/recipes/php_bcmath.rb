execute 'install_php_bcmath' do
  command "yum install php-bcmath"
  action :run
end
