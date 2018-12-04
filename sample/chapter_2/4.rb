# 2.4.2

puts 2 * 3 + 5 * 10
puts 2 * (3 + 5) * 10

p '========='
p '========='

# 2.4.3

n = 2

n *= 3
puts n

n /= 2
puts n

n **= 2
puts n

p '========='
p '========='

# column

number = 3
puts number.to_s + 'ppap'
puts "#{number}ppap"

p '========='
p '========='

# column2

puts 0.1 * 3
puts 0.1 * 3 == 0.3

puts 0.1r * 3r
puts 0.1r * 3r == 0.3

p '========='

a = 0.1
b = 3

puts a * b
puts a.rationalize * b.rationalize

p '========='

puts (a.rationalize * b.rationalize).to_f
