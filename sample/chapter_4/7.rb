# 4.7.1

a = [1, 2, 3, 4, 5]
p a[1, 3]

p a.values_at(0, 2, 4)

p a[-1]
p a.last
p a.last(2)

p '=========='
p '=========='

# 4.7.2

a[1, 3] = 100
p a

a = []
a.push(1, 2)
p a

a.delete(2)
p a

p a.delete(100)
p a

p '=========='
p '=========='

# 4.7.3
a = [1]
b = [2, 3]

p a.concat(b)
p a
p b

p '=========='

a = [1]
b = [2, 3]
p a + b
p a
p b

p '=========='
p '=========='

# 4.7.4
a = [1, 2, 3]
b = [3, 4, 5]

p a | b
p a - b
p a & b

p '=========='
require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b

p '=========='
p '=========='

# 4.7.6

a = []
b = [2, 3]
p a.push(b)

a = []
p a.push(*b)

p '=========='
p '=========='

# 4.7.7

def greeting(*names)
  "#{names.join('と')}、こんちはー！レッツPPAP！"
end

p greeting('田中さん')
p greeting('田中さん', '鈴木さん')

name = ['田中さん', '鈴木さん']
p greeting(name)

p '=========='
p '=========='

# 4.7.8

a = [1, 2, 3]
p [-1, 0, *a, 4, 5]

p '=========='
p '=========='

# 4.7.10

p ['apple', 'melon', 'orange']
p %w!apple melon orange!
p %w(apple melon orange)
p %w(
  apple
  melon
  orange
  )
p %w(big\ apple small\ melon orange)

p '=========='

shikitenkai = 'This is'
p %w(#{shikitenkai}\ an\ apple small\nmelon orange)
p %W(#{shikitenkai}\ an\ apple small\nmelon orange)

p '=========='
p '=========='

# 4.7.11

p 'Ruby'.chars

p '=========='
p '=========='

# 4.7.12
a = Array.new
b = Array.new(5)
c = Array.new(5, 0)

p a
p b
p c

a = nil
a = Array.new(10) { |n| n % 3 + 1 }
p a

p '=========='
p '=========='

# 4.7.13
a = nil
a = Array.new(5, 'default')

str = a[0]
p str

str.upcase!
p str
p a

p '=========='
a = nil
a = Array.new(5) { 'default' }

str = a[0]
p str

str.upcase!
p str
p a
