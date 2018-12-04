# 2.11.1

def greeting(country = 'japan')
  if country == 'japan'
    'こんちはー'
  else
    'What\'s up??'
  end
end

puts greeting
puts greeting('us')

p '========='

def tt(a, b, c = 0, d = 0)
  "#{a}, #{b}, #{c}, #{d}"
end

puts tt(1, 2)
puts tt(1, 2, 3)

p '========='

def foo(time = Time.now, message = bar)
  "time: #{time}, msg: #{message}"
end

def bar
  "BAR"
end

puts foo
