package 'php-mysql' do
  package_name value_for_platform_family(
    'rhel' => 'php56-mysqlnd',
    'debian' => 'php56-mysqlnd'
  )
  retries 3
  retry_delay 5
end
