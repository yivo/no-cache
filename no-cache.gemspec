# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path("../lib/no-cache/version", __FILE__)

Gem::Specification.new do |s|
  s.name          = "no-cache"
  s.version       = NoCache::VERSION
  s.author        = "Yaroslav Konoplov"
  s.email         = "eahome00@gmail.com"
  s.summary       = "A gem to fully disable HTTP cache."
  s.description   = "The gem provides easy way to fully disable HTTP cache in Rails controllers."
  s.homepage      = "https://github.com/yivo/no-cache"
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths = ["lib"]
end
