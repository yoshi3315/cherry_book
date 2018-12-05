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
