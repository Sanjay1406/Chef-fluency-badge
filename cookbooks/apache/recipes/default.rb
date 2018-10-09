#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# Installs Apache server


if node['platform'] == centos
	package = httpd
elsif node ['platform'] == debian
	package = apache2
end

package 'apache' do
	package_name package
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:start,:enable]
end
