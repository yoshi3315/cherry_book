# 6.5.1
reg = Regexp.new('\d{3}-\d{4}')
p reg

reg2 = %r!\d{3}-\d{4}!
p reg2

p '=================='
p '=================='
# 6.5.3
regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

p '=================='
p 'abc' =~ /ABC/i

p 'Abc\nDef' =~ /Abc.Def/m

reg = /
  \d{3}
  -      # コメントアウト
  \d{4}
/x

p '123-4567' =~ reg

p '=================='
p '=================='
# 6.5.4

text = '私の誕生日は1900年9月10日ですー！'

text =~ /(\d+)年(\d+)月(\d+)日/
p $~
p $&
p $1

p '=================='
p Regexp.last_match