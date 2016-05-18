execute 'install_php_bcmath' do
  command "yum -yqt install php56-bcmath"
  action :run
end
