#
# Cookbook Name:: site-otrs-sectypo3org
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

include_recipe "ssl_certificates"

ssl_certificate node['site-otrs-sectypo3org']['ssl_certificate'] do
  ca_bundle_combined true
end

######################
# Upstream cookbook
######################
include_recipe "otrs"
include_recipe "otrs::_apache"

# disable managing the ZZZAuto.pm via OTRS (as the GPG key secret is stored there)
resources("template[SysConfig]").action :nothing

######################
# .htaccess protection
######################

directory "/etc/htpasswd" do
  owner node['apache']['user']
  group node['apache']['group']
  mode 0700
end

file "/etc/htpasswd/.htpasswd" do
  mode 00644
  content <<-EOQ
# Add your users here. This file will *not* be overwritten by Chef.
test:$apr1$iidemMPy$vYjgojX5gR1v8riYG2EnK.
EOQ
  action :create_if_missing
end

link "/root/otrs.htpasswd" do
  to "/etc/htpasswd/.htpasswd"
end