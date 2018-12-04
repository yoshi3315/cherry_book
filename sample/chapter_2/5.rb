# 2.5.2

t = true
f = false

puts t && t
puts t && f

puts t || f
puts f || f

p '=========='
p '=========='

# 2.5.3

point = 7
day = 1

if day == 1
  point *= 5
end
puts point

point2 = 7
day2 = 1

point2 *= 5 if day2 == 1
puts point2
