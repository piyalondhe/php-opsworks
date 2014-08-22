execute 'install_imagemagick' do
  command "yum -yqt install ImageMagick ImageMagick-devel"
  action :run
end
