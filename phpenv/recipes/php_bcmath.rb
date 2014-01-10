execute 'install_php_bcmath' do
  command "yum -yqt install php-bcmath"
  action :run
end
