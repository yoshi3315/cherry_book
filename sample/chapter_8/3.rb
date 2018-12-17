# 8.3.1
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  def title
    log 'title is called.'
    'A great movie'
  end
end

class User
  include Loggable

  def name
    log 'name in called.'
    'Alice'
  end
end

product = Product.new
p product.title

user = User.new
p user.name

p '======================'
p '======================'
# 8.3.2

module Loggable2
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product2
  extend Loggable

  def self.create_products(names)
    log 'create_products is called.'
    'A great movie'
  end
end

p Product2.create_products([])
p Product2.log('hello')
