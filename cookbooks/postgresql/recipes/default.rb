#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#


package 'postgre-sql' do
	notifies :run, 'execute[postgresql-init]'
end


execute 'postgresql-init' do 
	command 'postgresql-setup initdb'
	action :nothing
end

server 'postgresql' do 
	action [:enable,:start]
end
