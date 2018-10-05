# encoding: UTF-8
# frozen_string_literal: true

module NoCache
  HEADERS = {
    "Cache-Control" => "private, no-store, no-cache, max-age=0, must-revalidate, post-check=0, pre-check=0",
    "Pragma"        => "no-cache",
    "Expires"       => "Fri, 01 Jan 1970 00:00:00 GMT"
  }.freeze

  class << self
    def headers
      HEADERS
    end
  end

  module Extension
    def no_cache!
      response.headers.merge!(NoCache.headers)
    end
  end
end

begin
  require "action_controller/metal"
  ActionController::Metal.send :include, NoCache::Extension
rescue LoadError
  nil
end
