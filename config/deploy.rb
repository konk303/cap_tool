# -*- coding: utf-8 -*-

load 'config/setting.rb'

set :tmp_dir, "/tmp/cap_tool"
set :linked_dirs, ["bundler", "log", "wk_app", "wk_sysop"]

ssh_proxy = Net::SSH::Proxy::HTTP.new(fetch(:proxy_host), fetch(:proxy_port),
  :user => fetch(:proxy_user), :password => fetch(:proxy_pass))
set :ssh_options, { :proxy => ssh_proxy}
