set :stage, :ctsp

server(fetch(:servers)[:ct],
  user: fetch(:accounts)[:ct_root_account][:user],
  password: fetch(:accounts)[:ct_root_account][:password],
  roles: %w{front back frontmobile}
  )

set :deploy_to, "/lws/app/app-sp"
set :assets_prefix, "04"

set :s3_config, fetch(:s3_accounts)[:test_cnt_org]

set :branch, :develop
# no tag needed
# set :tag_prefix, "ST_DEPLOY"
