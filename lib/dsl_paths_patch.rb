# -*- coding: utf-8 -*-

# == override path related methods to handle multiple repos per one role.
module Capistrano
  module DSL
    def current_path
      repo = fetch(:repo)
      repo ? deploy_path.join(repo.to_s) : super
    end

    def releases_path
      repo = fetch(:repo)
      repo ? deploy_path.join('releases', repo.to_s) : super
    end

    def release_path
      repo = fetch(:repo)
      repo ? fetch(:"#{repo}_release_path", current_path) : super
    end

    def set_release_path(timestamp = now)
      repo = fetch(:repo)
      repo ? set(:"#{repo}_release_path", releases_path.join(timestamp)) : super
    end

    def shared_path
      repo = fetch(:repo)
      repo ? deploy_path.join('shared', repo.to_s) : super
    end

    def now
      env.timestamp.strftime("%Y%m%d%H%M")
    end
  end
end
