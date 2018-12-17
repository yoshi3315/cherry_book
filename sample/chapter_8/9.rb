# 8.9.4

class Product
  def name
    "A great film"
  end
end

product = Product.new
p product.name

module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product
  prepend NameDecorator
end

product2 = Product.new
p product2.name

p '======================='
p '======================='
# 8.9.5

module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# p 'Alice'.shuffle

class User
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
p user.shuffled_name
p 'Alice'.shuffle
