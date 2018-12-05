range = 1..5
p range.include?(4.9)
p range.include?(5)

range2 = 1...5
p range2.include?(5)

p '=============='
p '=============='

# 4.5.2

def liquid?(temp)
  0 <= temp && temp <100
end

p liquid?(-1)
p liquid?(1)
p liquid?(100)

def liquid2?(temp)
  (0...100).include?(temp)
end

p liquid2?(-1)
p liquid2?(1)
p liquid2?(100)

p '=============='
p '=============='

# 4.5.3

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

p charge(3)
p charge(12)
p charge(17)
p charge(88)

p '=============='
p '=============='

# 4.5.4

p (1..5).to_a
p ('bad'..'bag').to_a
p [*1..10]

p '=============='
p '=============='

# 4.5.5

sum = 0
(1..10).each { |num| sum += num }
p sum

nums = []
(1..10).step(3) { |num| nums << num }
p nums
