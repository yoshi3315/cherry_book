# 2.3.1

puts "こんにちは\nさようなら"
puts 'こんにちは\nさようなら'

name = 'Alice'
puts "Hello, #{name}!!"
puts 'Hello, #{name}!!'
puts "Hello, \#{name}!!"

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です"

puts 'He said, "don\'t speak."'
puts "He said, \"don't speak.\""

puts '==========='
puts '==========='

# 2.3.2

puts 'ruby' == 'ruby'
puts 'ruby' == 'Ruby'
puts 'ruby' != 'ruby'
puts 'ruby' != 'Ruby'

puts '==========='

puts 'a' < 'b'
puts 'a' < 'A'
puts 'A' < 'a'
puts 'abc' < 'def'
puts 'abc' < 'ab'
puts 'abc' < 'abcd'
puts 'あいう' < 'かきく'
