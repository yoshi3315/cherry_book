# 4.2.1

a = [1, 2, 3]
a[4] = 50

p a

p '==========='
a = []
a << 1
a << 2

p a

p '==========='
a.delete_at(1)
p a

p '==========='
p a.delete_at(100)
p a

p '==========='
p '==========='
# 4.2.2

a = nil
b = nil
a, b = [1, 2]
p a
p b

p '==========='

quo_rem = 14.divmod(3)
p "商：#{quo_rem[0]}, 余り：#{quo_rem[1]}"

p '==========='

quo, rem = 14.divmod(3)
p "商：#{quo}, 余り：#{rem}"