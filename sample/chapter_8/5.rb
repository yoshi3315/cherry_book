# 8.5.1

module Loggable
end

class Product
  extend Loggable
end

p Product.include?(Loggable)
p Product.included_modules

p '============='
p '============='
# 8.5.3

p Array.include?(Enumerable)

p '============='
p '============='
# 8.5.4

class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end
  
  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

p t_120 = Tempo.new(120)
p t_180 = Tempo.new(180)

p t_120 > t_180

p '============='
p '============='
# 8.5.7

class User
end

p User.class
p Class.class
p Class.superclass

p '============='
p '============='
# 8.5.8

module NameChanger
  def change_name
    self.name = 'あいう'
  end
end

class User
  include NameChanger

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
p user.name

user.change_name
p user.name