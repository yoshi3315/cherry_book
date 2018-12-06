# 6.2.1
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)

p '=========='
text = <<TEXT
私の郵便番号は1234567
僕の住所は6670056 兵庫県1234だよ
TEXT

p text.gsub(/(\d{3})(\d{4})/, '\1-\2')
