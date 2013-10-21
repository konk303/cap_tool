set :stage, :st02

server(fetch(:servers)[:st],
  user: fetch(:accounts)[:st_server_account][:user],
  password: fetch(:accounts)[:st_server_account][:password],
  roles: %w{gateway},
  )

set :deploy_to, "/lws/app/app-02"
set :assets_prefix, "prd03"

set :s3_config, fetch(:s3_accounts)[:test_cnt_org]

set :branch, :lcheck
set :tag_prefix, "LC_DEPLOY"
