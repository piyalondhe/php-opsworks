execute 'install_imagemagick' do
  command "yum -yqt install ImageMagick"
  action :run
end
