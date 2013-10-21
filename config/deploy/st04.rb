set :stage, :st04

server(fetch(:servers)[:st],
  user: fetch(:accounts)[:st_server_account][:user],
  password: fetch(:accounts)[:st_server_account][:password],
  roles: %w{gateway},
  )

set :deploy_to, "/lws/app/app-04"
set :assets_prefix, "04"

set :s3_config, fetch(:s3_accounts)[:test_cnt_org]

set :branch, :master
# no tag needed?
# set :tag_prefix, "ST_DEPLOY"
