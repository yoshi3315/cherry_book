# 7.10.1

class User
  def hello
    'Hello!'
  end

  alias greeting hello
end

user = User.new
p user.hello
p user.greeting

p '==============='
p '==============='
# 7.10.4

class Product
  attr_reader :code, :name
  
  def initialize(code, name)
    @code = code
    @name = name
  end

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end
end

a = Product.new('A-1', 'movie')
b = Product.new('B-1', 'film')
c = Product.new('A-1', 'movie')

p a == b
p a == c

p '==============='
p '==============='
# 7.10.5

a = nil
b = nil

a = 'abc'
b = 'abc'
p a.equal?(b)

c = a
p a.equal?(c)

p '==============='

h = { 1 => 'integer', 1.0 => 'float' }
p h[1]
p h[1.0]

p 1.eql?(1.0)
p 1 == 1.0
