execute 'install_php_imagemagick' do
  command "pecl install imagick"
  action :run
end
