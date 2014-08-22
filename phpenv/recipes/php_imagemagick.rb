execute 'install_php_imagemagick' do
  command "pecl install imagick; echo \"extension=imagick.so\" > /etc/php.d/imagick.ini"
  action :run
end
