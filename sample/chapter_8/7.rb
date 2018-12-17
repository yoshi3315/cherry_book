# 8.7.1 & 8.7.2
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  module_function :log
end

Loggable.log('Hello.')

class Product
  include Loggable

  def title
    log 'title is called.'
    'a great movie'
  end
end
product = Product.new
p product.title
