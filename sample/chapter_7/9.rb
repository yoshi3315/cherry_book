class Product
  @name = 'foo'

  def self.name
    @name
    @name2 = 'bar'
  end
end

p Product.name
