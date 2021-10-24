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

puts '------------4.9while,untilメソッド-----------------------------------------'

a = []
while a.size < 5
  a << 1
end
print a
puts

a = []
while a.size < 5 do a << 2 end
print a
puts

a = []
a << 3 while a.size < 5
print a
puts

a = []
begin 
  a << 4
end while false
print a
puts

a = [10,20,30,40,50]
until a.size <= 3
a.delete_at(-1)
end
print a
puts

puts '------------4.9forメソッド-----------------------------------------'

number = [1,2,3,4]
sum = 0
number.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
print sum
puts
#下の変数は参照できない
# print sum_value
# puts
# print n
# puts

sum = 0
for n in number
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
print sum
puts
print sum_value
puts
print n
puts

puts '------------4.9loopメソッド-----------------------------------------'

number = [1, 2, 3, 4, 5]
loop do
  n = number.sample
  puts n
  break if n == 5
end

puts '------------4.9その他繰り返し処理-----------------------------------------'

print (1..4).map{ |n| n * 10}
puts

print 1.upto(5).select{ |n| n.odd? }
puts