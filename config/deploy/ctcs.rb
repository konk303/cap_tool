set :stage, :ctcs

server(fetch(:servers)[:ct],
  user: fetch(:accounts)[:ct_server_account][:user],
  password: fetch(:accounts)[:ct_server_account][:password],
  roles: %w{front back frontmobile}
  )

set :deploy_to, "/lws/app/app-cs"
set :assets_prefix, nil

set :s3_config, fetch(:s3_accounts)[:lws_ct_contents]

set :branch, :develop
set :tag_prefix, "ST_DEPLOY"
