# 7.7.4

# class User
#   class << self
#     private
    
#     def hello
#       'Hello!'
#     end
#   end
# end

# p User.hello

# p '============='

# class Users
#   def self.hello
#     'Hello!'
#   end
#   private_class_method :hello
# end

# p Users.hello

p '============='
p '============='
# 7.7.7

class User2
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected
  def weight
    @weight
  end
end

alice = User2.new('Alice', 50)
bob = User2.new('Bob', 60)

p alice.heavier_than?(bob)
p bob.heavier_than?(alice)

p alice.weight
