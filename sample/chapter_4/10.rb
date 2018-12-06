# 4.10.1

nums = [1, 2, 3, 4, 5].shuffle
nums.each do |num|
  puts num
  break if num == 5
end

p '============'
nums = [1, 2, 3, 4, 5].shuffle
int = 0
while int < nums.size
  num = nums[int]
  puts num
  break if num == 5
  int += 1
end

p '============'
ret =
  while true
    break
  end
p ret

ret =
  while true
    break 123
  end
p ret

p '============'
fruits = ['apple', 'melon', 'orange']
nums = [1, 2, 3]
fruits.each do |fruit|
  nums.shuffle.each do |num|
    puts "#{fruit}, #{num}"
    break if num == 3
  end
end

p '============'
p '============'
# 4.10.2

fruits = ['apple', 'melon', 'orange']
nums = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    nums.shuffle.each do |num|
      puts "#{fruit}, #{num}"
      if fruit == 'orange' && num == 3
        throw :done
      end
    end
  end
end

p '============'
ret =
  catch :done do
    throw :done
  end
p ret

ret =
  catch :done do
    throw :done, 123
  end
p ret

p '============'
p '============'
# 4.10.4
nums = [1, 2, 3, 4, 5]
nums.each do |num|
  next if num.even?
  puts num
end

p '============'
nums = [1, 2, 3, 4, 5]
int = 0
while int < nums.size
  num = nums[int]
  int += 1
  next if num.even?
  puts num
end

p '============'
fruits = ['apple', 'melon', 'orange']
nums = [1, 2, 3]
fruits.each do |fruit|
  nums.each do |num|
    next if num.even?
    puts "#{fruit}, #{num}"
  end
end

p '============'
p '============'
# 4.10.5
foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ =>"
  answer = ['はい', 'いいえ'].sample
  puts answer
  redo unless answer == 'はい'
end

p '============'
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ =>"
  answer = 'いいえ'
  puts answer
  count += 1
  redo if answer != 'はい' && count < 2
  count = 0
end

