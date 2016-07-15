#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


bash 'updating system' do
	code <<-EOH
		sudo apt-get update
	EOH
end

package 'nginx' do
	action :install
end

service 'nginx' do
	action [:enable, :start]
end

cookbook_file "/usr/share/nginx/html/index.html" do
	source 'index.html'
	mode "0644"
end

directory '/tmp/eshwarg' do
  owner "#{node[:nginx][:username]}"
  group "#{node[:nginx][:password]}"
  mode '0755'
  action :create
end


# ssh -i "chef_server.pem" ubuntu@54.227.70.14