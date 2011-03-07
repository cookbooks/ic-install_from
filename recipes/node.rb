#
# Cookbook Name:: flume
# Recipe:: default
#
# Copyright 2011, Infochimps, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe "flume"

package "flume-node" 

service "flume-node" do
  supports :restart => true, :start=>true, :stop => true
end

provide_service ("#{node[:flume][:cluster_name]}-flume-node")
