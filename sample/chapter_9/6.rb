# 9.6.5

sample = 1 / 0 rescue 0
p sample

require 'date'

def to_date(str)
  Date.parse(str) rescue nil 
end

p to_date('2018-01-01')
p to_date('abc')

p '==============='
p '==============='
# 9.6.6

begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end

p '==============='
p '==============='
# 9.6.8

def fizz_buzz(num)
  if (num % 15).zero?
    'Fizz Buzz'
  elsif (num % 3).zero?
    'Fizz'
  elsif (num % 5).zero?
    'Buzz'
  else
    num.to_s
  end
rescue => e
  puts "[LOG] エラー発生!: #{e.class} #{e.message}"
  # raise
end

p fizz_buzz(nil)

p '==============='
p '==============='
# 9.6.9

class NoCountryError < StandardError
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError, "無効な国名です！#{country}"
  end
end

p currency_of(:itary)
