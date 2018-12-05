# 4.4.1

nums = [1, 2, 3, 4, 5, 6]
p nums

ten_times_nums = nums.map { |num| num * 10 }
p ten_times_nums

even_nums = nums.select { |num| num.even? }
p even_nums

non_three = nums.reject { |num| num % 3 == 0 }
p non_three

first_even = nums.find { |num| num.even? }
p first_even

inj = nums.inject(0) { |result, num| result + num }
p inj
