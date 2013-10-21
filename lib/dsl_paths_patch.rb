# -*- coding: utf-8 -*-

# == override path related methods to handle multiple repos/targets.
module Capistrano
  module DSL
    def deploy_path
      repo = fetch(:repo)
      repo ? super.join(repo.to_s) : super
    end
  end
end

