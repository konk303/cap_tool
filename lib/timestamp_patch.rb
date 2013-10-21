# -*- coding: utf-8 -*-

# == override timestamp method to use local time
module Capistrano
  class Configuration
    def timestamp
      # @timestamp ||= Time.now.utc
      @timestamp ||= Time.now
    end
  end
end

