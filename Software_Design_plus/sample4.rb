# puts to_hex(0, 0, 0)
# puts to_hex(25, 255, 255)
# puts to_hex(4, 6, 120)
# puts to_ints('#000000')
# puts to_ints('#ffffff')
# puts to_ints('043c78')

puts '-----------------配列------------------------------------'

[].class

a = [1, 2, 3]
# a = [1, 'apple', 2, 'orange', 3, 'melon']
# a = [[10,20,30],[40,50,60],[70,80,90]]

puts a

puts a[0]
puts a[1]

a[1] = 20
a[4] = 50
a << 9
a.delete_at(3)
a.delete_at(4)
puts a

puts '-----------------配列の多重代入------------------------------------'

a, b = [1, 2]
c, d = [10]
e, f = [100,200,300]
puts a
puts b
puts c
puts d
puts e
puts f

puts 14.divmod(3)

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]},余り=#{quo_rem[1]}"


puts '-----------------ブロック------------------------------------'

  number = [1, 2, 3, 4]
  sum = 0
  number.each do |n|
    sum += n
  end
  
  puts sum
  
puts '-----------------ブロック(each以外の使用例)------------------------------------'

  a = [1, 2, 3, 1, 2, 3]
  
  a.delete(2)
  puts a
  
puts '-----------------------------------------------------'

  a = [1, 2, 3, 1, 2, 3]
 
  a.delete_if do |n|
    n.odd?
  end
  puts a

puts '-----------------ブロック引数------------------------------------'

  sum = 0
  
  number.each do |n|
    sum += n
  end
  puts sum
  
  number.each do |i|
    sum += i
  end
  puts sum
  
  number.each do |number|
    sum += number
  end 
  puts sum
  
  number.each do |element|
    sum += element
  end 
  puts sum
  
puts '-----------------ブロック引数(詳細)------------------------------------'

  abcs = [1, 2, 3, 4]
  sum = 0
  
  abcs.each do |element|
    sum_value = element.even?? element*10 : element
    sum += sum_value
  end 
  
  puts sum
  
puts '-----------------ブロック配列メソッド(map/collect)------------------------------------'
 
 #各要素を10倍にする
  numbers = [1,2,3,4,5]
  new_number = []
  numbers.each{ |n| new_number << n * 10}
  puts new_number
puts '-----------------'  
  numbers = [1,2,3,4,5]
  new_number = numbers.map{ |n| n*10}
  puts new_number
  
  