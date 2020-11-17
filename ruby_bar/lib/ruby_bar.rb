require "ruby_bar/version"
require "redis"

module RubyBar
  class Error < StandardError; end

  $redis = Redis.new(host: "redis", port: 6379)

  def self.set(key, value)
    $redis.set(key, value)
  end

  def self.get(key)
    $redis.get(key)
  end

  def self.all_keys
    $redis.keys
  end
end
