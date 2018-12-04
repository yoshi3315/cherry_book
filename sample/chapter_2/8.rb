# 2.8.2

puts %@こんにちは!@

p '========'
p '========'

# 2.8.3

puts 'Line1,
Line2'

p '========'

a = <<PPAP
ppap
pppap
ppppap
PPAP

puts a

p '========'

def method1
  <<TEXT
  普通のヒアドキュメントは最後の識別子をインデントできない
TEXT
end

def method2
  <<-TEXT
  <<-だとインデントできる
      ほほー
  TEXT
end

def method3
  <<~TEXT
  <<~だとさらに内部文字列のインデントを無視できる
      ほほーほほー
  TEXT
end

puts method1
puts method2
puts method3

p '========'

kantan = 'ほほーほほー'
b = <<TEXT
式展開有効#{kantan}
TEXT
puts b

c = <<'TEXT'
式展開無効#{kantan}
TEXT
puts c

p '========'
d = 'Ruby'
d.prepend(<<TEXT)
Java
PHP
TEXT
puts d

p '========'
e = 'Ruby'
e.prepend(<<TEXT.upcase)
Java
PHP
TEXT
puts e

p '========'
p '========'

# 2.8.4

puts sprintf('%0.3f', 1.2)
puts '%0.3f' % 1.2

p '========'

puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts '%0.3f + %0.3f' % [1.2, 0.48]

p '========'
p '========'

# 2.8.5

puts [10, 20 ,30].join
puts "\u3042\u3043\u3044"

p '========'
p '========'

# 2.8.6

puts ?a
