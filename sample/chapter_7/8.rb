class Product
  DEFAULT_PRICE = 0
  DEFAULT_PRICE = 1000
  SOME_NAME = ['foo', 'bar', 'baz'].map(&:freeze).freeze
end

p Product::DEFAULT_PRICE

Product::DEFAULT_PRICE = 3000

p Product::DEFAULT_PRICE

Product.freeze

# Product::DEFAULT_PRICE = 3000

Product::SOME_NAME[0].upcase!
