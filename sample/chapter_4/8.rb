# 4.8.1

fruits = ['apple', 'orange', 'melon']

fruits.each_with_index { |fruit, ind| puts "#{ind}: #{fruit}" }

p '=============='
p '=============='
# 4.8.2

fruits.delete_if.with_index { |fruit, ind| fruit.include?('a') && ind.odd? }
p fruits

fruits = ['apple', 'orange', 'melon']
p fruits.each

p '=============='
p '=============='
# 4.8.3
p fruits.map.with_index(10) { |fruit, ind| "#{ind}: #{fruit}"}

p '=============='
p '=============='
# 4.8.4
dimensions = [
  [10, 20],
  [30, 50],
  [60, 60]
]

areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end

p areas

p '=============='
areas = []
dimensions.each do |length, width|
  areas << length * width
end

p areas

p '=============='
areas = []
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end

p '=============='
dimensions.each_with_index do |length, width, int|
  puts "length: #{length}, width: #{width}, int: #{int}"
end

p '=============='
dimensions.each_with_index do |(length, width), int|
  puts "length: #{length}, width: #{width}, int: #{int}"
end

p '=============='
p '=============='
# 4.8.5
nums = [1, 2, 3, 4]
sum = 0

nums.each do |nnn; sum|
  sum = 10
  sum += nnn
  p sum
end

p sum

p '=============='
p '=============='
# 4.8.7

a = nil
a = []
p a.delete(100)

a = nil
a = []
b =
a.delete(100) do
  'NG'
end
p b

a = nil
a = []
b = nil
b = a.delete 100 { 'NG' }

p b

p a.delete(100) { 'NG' }


