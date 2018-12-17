module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end
end

AwesomeApi.base_url = 'test.url'
AwesomeApi.debug_mode = true

p AwesomeApi.base_url
p AwesomeApi.debug_mode

p '==================='
p '==================='
# column

require 'singleton'

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    @base_url = ''
    @debug_mode = false
  end
end

# config = Configuration.new
config = Configuration.instance
config.base_url = 'test.url'
config.debug_mode = true

other = Configuration.instance
p other.base_url
p other.debug_mode = true