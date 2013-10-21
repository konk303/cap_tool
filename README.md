# cap_tool

cap tasks, handling multiple repos of rails.

## install

1. copy config/setting.rb.sample to config/setting.rb
    cp config/
1. edit config/setting.rb according to your env.

## usage

see https://github.com/capistrano/capistrano/blob/master/lib/capistrano/configuration/server.rb for infos about capistrano.

1. show task lists
    cap -T
1. deploy assets
    cap st01 assets:deploy
