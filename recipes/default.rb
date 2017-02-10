#
# Cookbook Name:: site-securityteamtypo3org
# Recipe:: default
#
# Copyright 2015, TYPO3 Association
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

=begin
#<
Customizes our [OTRS cookbook](https://github.com/TYPO3-cookbooks/otrs) to be used for this instance.

Brings the SSL certificate, adds HTTP Basic auth protection.
#>
=end

include_recipe "t3-base"

######################
# Upstream cookbook
######################
include_recipe "otrs"
include_recipe "otrs::_apache"

######################
# .htaccess protection
######################

apache_module "auth_digest"

directory "/etc/htpasswd" do
  owner node['apache']['user']
  group node['apache']['group']
  mode 0700
end

file "/etc/htpasswd/.htpasswd" do
  mode 00644
  content <<-EOQ
# Remove this content, add your users here. This file will not be overwritten by Chef.
test:t3secteam:a737bee3ea4dde6d8e4c9247c1e686d8
EOQ
  action :create_if_missing
end

link "/root/otrs.htpasswd" do
  to "/etc/htpasswd/.htpasswd"
end