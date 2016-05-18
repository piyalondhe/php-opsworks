package 'apache2' do
  package_name value_for_platform_family(:rhel => "httpd24", :debian => "apache2")
  retries 3
  retry_delay 5
  action :install
end
