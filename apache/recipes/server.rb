#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.
#
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h1>hello world</h1>
<h1>ip address: #{node['ipaddress']}</h1>

"
end

service 'httpd' do
  action [ :enable, :start ]
end
