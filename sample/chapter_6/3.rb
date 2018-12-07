regex = /\d{3}-\d{4}/
p regex.class

p '123-4567' =~ /\d{3}-\d{4}/

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'AAA'
else
  puts 'BBB'
end

p '123-4567' !~ /\d{3}-\d{4}/

p '============'
p '============'
# 6.3.2

text = '私の誕生日は1900年1月1日'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m
p m[1]

p '============'
p '============'
# 6.3.2

text = '私の誕生日は1900年1月11日'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m
p m[:year]
p m[:month]
p m[:day]

text = '私の誕生日は1900年1月11日'
/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
puts "#{year}/#{month}/#{day}"

text = '私の誕生日は1900年1月11日'
text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
year = nil
month = nil
day = nil
puts "#{year}/#{month}/#{day}"

p '============'
p '============'
# 6.3.4
p '123 456 789'.scan(/\d+/)
p '1900年9月19日 1901年10月20日'.scan(/(\d+)年(\d+)月(\d+)日/)

p '============'
p '123 456 789'[/\d{3}/]

p '============'
text = '1900年9月19日 1901年10月20日'
p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 3]

p '============'
text = '123,456-789'
p text.gsub(',', ':')
p text.gsub(/,|-/, ':')

p '============'
text = '私の誕生日は1900年9月19日やねん'
p text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>-\k<month>-\k<day>')

p '============'
text = '123,456-789'
hash = { ',' => ':', '-' => '/' }
p text.gsub(/,|-/, hash)
p text.gsub(/,|-/){ |matched| matched == ',' ? ':' : '/' }