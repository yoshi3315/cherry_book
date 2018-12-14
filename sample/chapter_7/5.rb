# 7.5.2

class Foo
  puts "クラス直下：#{self}"
  
  def self.bar
    puts "クラスメソッド：#{self}"
  end
  
  def baz
    puts "インスタンスメソッド：#{self}"
  end
end

foo = Foo.new
p Foo.bar
p foo.baz
