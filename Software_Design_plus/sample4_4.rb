puts '------------4.9様々な繰り返し処理-----------------------------------------'

sum = 0
5.times { |n| sum += n }
puts sum

puts '------------4.9upto,downtoメソッド-----------------------------------------'

a = []
10.upto(14){ |n| a << n}
print a
puts

b = []
14.downto(10){ |n| b << n}
print b
puts

puts '------------4.9stepメソッド-----------------------------------------'

a = []
1.step(10,2){ |n| a << n }
print a
puts

a = []
10.step(1,-2){ |n| a << n }
print a
puts