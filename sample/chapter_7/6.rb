# 7.6.5
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

product = Product.new('A great movie', 1000)
p product.name
p product.price
p '================='
p product.to_s


class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd
p '================='
p dvd.to_s
