require 'active_support/concern'

module Example
  class << self
    attr_reader :includers
  end

  def self.included(base=nil, &block)
    @includers ||= []
    @includers << base if base
    super
  end

  def hello
    puts "hello"
  end
end

class A
  include Example
end

class B
  include Example
end

p Example.includers
