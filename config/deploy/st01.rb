# -*- coding: utf-8 -*-
set :stage, :st01

server(fetch(:servers)[:st],
  user: fetch(:accounts)[:st_server_account][:user],
  password: fetch(:accounts)[:st_server_account][:password],
  roles: %w{gateway},
  )

set :deploy_to, "/lws/app/app-01"
set :assets_prefix, "01"

set :s3_config, fetch(:s3_accounts)[:test_cnt_org]

set :branch, :develop
# repoごとにbranchを変えたい場合は、個別に指定する。
# 個別指定がない時は:branchが使われる。
# == ex. lws_frameworkは:develop固定だが、他はdeploy時に使用ブランチ入力したいときは
# set :branch_lws_framework, :develop
# ask :branch, :develop           # default developで入力待ちに

set :tag_prefix, "ST_DEPLOY"
