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

cd 
git add .
git commit -m "[Add][Software_Design_plus]_chapter4_1"
git push origin main
