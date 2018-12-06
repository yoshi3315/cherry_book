# 4.9.1

sum = 0
p 5.times { sum += 1}

p '============='
p '============='
# 4.9.2

a = []
10.upto(15) { |n| a << n}
p a

a = []
10.downto(5) { |n| a << n}
p a

p '============='
p '============='
# 4.9.3

a = []
10.step(100, 7) { |n| a << n}
p a

p '============='
p '============='
# 4.9.4

a = []
while a.size < 5
  a << 1
end
p a

p '============='
a = []
a << 1 while a.size < 5
p a

p '============='
a = []
a << 1 while false
p a

a = []
begin
  a << 1
end while false
p a

p '============='
a = [1, 2, 3, 4, 5]
a.delete_at(-1) until a.size <= 3
p a

p '============='
p '============='
# 4.9.4
nums = [1, 2, 3, 4, 5]
sum = 0
for num in nums
  sum += num
end
p sum

p '============='
nums = [1, 2, 3, 4, 5]
sum = 0
for num in nums do sum += num end
p sum

p '============='
nums = [1, 2, 3, 4, 5]
sum = 0
for num in nums
  sum2 = num
  sum += num
end
p sum
p sum2

p '============='
p '============='
# 4.9.6
nums = [1, 2, 3, 4, 5]
loop do
  num = nums.sample
  puts num
  break if num == 5
end
