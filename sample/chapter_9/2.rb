# 9.2.2

puts 'Start.'

module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts '例外発生!!'
end

puts 'End.'

p '====================='
p '====================='
# 9.2.4

begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース -------"
  puts e.backtrace
  puts "-------"
end

p '====================='
p '====================='
# 9.2.5

begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
end

p '====================='

begin
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "メソッドがないです"
end

p '====================='

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "メソッドがないかゼロ除算です"
  puts e.class
end

p '====================='
p '====================='
# 9.2.8

retry_count = 0
begin
  puts '処理開始！！'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts 'retry!!!'
    retry
  else
    puts 'retry失敗...'
  end
end

