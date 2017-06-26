#
# Cookbook:: learn_apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
apt_update 'update the apt cache daily' do
 frequency 86_400
 action :periodic 
 end
 
 package 'apache2'
 service 'apache2' do
 supports:status=>true
 action [:enable,:start]
 end
 
 template '/var/www/html/index.html' do
 source 'index.html.erb'
 end
 
 
 
