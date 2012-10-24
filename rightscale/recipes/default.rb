#
# Cookbook Name:: rightscale
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "curl"

bash "git clone" do 
  code <<-EOF
  mkdir /app
  cd /app
  git clone http://github.com/benlivingood-wf/rs_api_examples.git rs-api
  EOF
end

#/app/rs-api/bin/rs-config-api.sh
# it asks for account, password, account # [like 12345], and version of api 1.0
#then login
#/app/rs-api/bin/rs-login.sh
#then you have 8 hours to do things like 
#/app/rs-api/bin/rs-get-servers.sh

