# 2.12.5

a = 'Hello'
b = 'Hello'
puts a.object_id
puts b.object_id

c = b
puts c.object_id

p '==========='

a = 'hello'
b = 'hello'
b = c

c.upcase!

puts a
puts b
puts c

p '==========='
p '==========='

# 2.12.7

require 'date'
puts Date.today
