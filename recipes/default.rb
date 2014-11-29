#
# Cookbook Name:: site-otrs-sectypo3org
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

directory "/root/htaccess" do
  mode 0600
end

file "/root/htaccess/.htpasswd" do
  mode 0600
  content "Add your users here"
  action :create_if_missing
end

include_recipe "otrs"

# disable managing the ZZZAuto.pm via OTRS (as the GPG key secret is stored there)
resources("template[SysConfig]").action :nothing