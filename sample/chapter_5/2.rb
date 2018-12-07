# 5.2.2

correncies = { japan: 'yen', us: 'dollar', india: 'rupee'}

correncies.each do |key, value|
  puts "#{key}: #{value}"
end

correncies.each do |key_value|
  p key_value
end

p correncies.size
