#
# Cookbook Name:: fourthcoffee
# Recipe:: default
#
# Copyright 2014, Chef Software, Inc.
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

dsc_resource 'webserver' do
  resource :windowsfeature
  property :name, 'Web-Server'
  property :ensure, 'Present'
end

dsc_resource 'dotnet45' do
  resource :windowsfeature
  property :name, 'Web-Asp-Net45'
  property :ensure, 'Present'
end

cookbook_file "fourthcoffee_site.zip" do
  path "#{Chef::Config[:file_cache_path]}\\fourthcoffee_site.zip"
  action :create_if_missing
end

dsc_resource 'get-dsc-resource-kit' do
  resource_name :archive
  property :ensure, 'Present'
  property :path, "#{Chef::Config[:file_cache_path]}\\fourthcoffee_site.zip"
  property :destination, "#{Chef::Config[:file_cache_path]}\\fourthcoffee_site"
end