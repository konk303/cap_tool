set :stage, :st03

server(fetch(:servers)[:st],
  user: fetch(:accounts)[:st_server_account][:user],
  password: fetch(:accounts)[:st_server_account][:password],
  roles: %w{gateway},
  )

set :deploy_to, "/lws/app/app-03"
set :assets_prefix, "03"

set :s3_config, fetch(:s3_accounts)[:test_cnt_org]

ask :branch, :overload_1016
# no tag needed?
# set :tag_prefix, "ST_DEPLOY"
