# 2.10.1

puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

p '========'

puts nil || false
puts false || nil
puts nil || false || 2 || 3

p '========'
p '========'

# 2.10.2

t = true
f = false

puts (t and f)
puts (t or f)
puts not(t)

p '========'

puts f || f
puts !f || f
puts !f || t
puts not(f || t)

p '========'

puts t || t && f
puts (t or t and f)

p '========'
p '========'

# 2.10.3

status = 'error'

a =
unless status == 'ok'
  'error'
end

puts a

b = 'error' unless status == 'ok'
puts b

p '========'
p '========'

# 2.10.4

country = 'itary'

c =
case country
when 'japan'
  'こんちはー'
when 'us'
  'What\'s up?'
when 'itary'
  'chao!'
else
  '???'
end

puts c
