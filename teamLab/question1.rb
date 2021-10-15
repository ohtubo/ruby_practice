#問１
# 1,3,7,11,21,39...
# 50番個目にある数字は何ですか？

puts "求めたい数字を入力して下さい"
puts "１つ目の数字"
a = gets.to_i
puts "２つ目の数字"
b = gets.to_i
puts "３つ目の数字"
c = gets.to_i
puts "何番目の数字を求めますか？"
t = gets.to_i

i = 0
while i < (t - 3)
  d =  a + b + c
  a = b
  b = c
  c = d
  i += 1
end

puts "#{i+3}番目の数は#{c}です"