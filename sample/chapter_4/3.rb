# 4.3.2

num = [1, 2, 3, 4]
sum = 0
num.each do |numu|
  sum += numu
end

p sum

p '=============='
p '=============='
# 4.3.3

num = nil
a = [1, 2, 3, 4, 5, 6]
p a

a.delete_if do |num|
  num.odd?
end

p a
