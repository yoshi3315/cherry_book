# 2.6.1

def greeting(country)
  return 'countryを入力してください' if country.nil?
  
  if country == 'japan'
    'こんにちは'
  else
    'hello!'
  end
end

puts greeting(nil)
puts greeting('japan')
