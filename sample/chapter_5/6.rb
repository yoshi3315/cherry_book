# 5.6.1

c = { japan: 'yen', us: 'dollar', india: 'rupee' }
p c.keys
p c.values

d = { korea: 'won' }

e = { japan: 'yen', **d }
p e

p '==============='
p '==============='
# 5.6.2
def example(menu, drink: true, potato: true, **others)
  puts others
end

example('fish', chiken: false)

p '==============='
p '==============='
# 5.6.7
p c.to_a
p c.to_a.to_h

p '==============='
p '==============='
# 5.6.8
h = Hash.new('hello')
p h
p h[:fff]

p '==============='
h = nil
h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]
p h