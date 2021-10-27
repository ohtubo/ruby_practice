puts '------------範囲(Renge)-----------------------------------------'

puts range = 1..5
puts range.include?(0)
puts 1...5
puts 'a'..'e'
puts 'a'...'e'

puts (1..5).class
puts (1..5).include?(1)

a = [1, 2, 3, 4, 5]
puts a[1..3] 

puts '------------範囲(Renge)でn以上m以下の判定-----------------------------------------'

#0以上100未満であれば液体と判定したい
def liquid?(temperature)
  (0...100).include?(temperature)
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)


puts '------------範囲(Renge)でCase文-----------------------------------------'

def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else
    1000
  end
end

puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)

puts '------------4.7配列詳しく-----------------------------------------'

a = [1, 2, 3, 4, 5]
puts a[1,3]
puts a.values_at(0,2,4)

puts a.last
puts a.last(2)

puts '------------4.7配列[集合]-----------------------------------------'

a = [1,2,3]
b = [3,4,5]

print "a|b = #{a|b}, "
print "a - b = #{a - b}, "
puts "a & b = #{a & b}"

puts '------------4.7メソッドの可変長引数-----------------------------------------'

def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

puts greeting('田中さん')
puts greeting('田中さん', '鈴木さん')
puts greeting('田中さん', '鈴木さん', '佐藤さん' )

puts '------------4.7配列を簡素に作る-----------------------------------------'

puts %w!appel melon orange!
puts %w(appel melon orange painappule) 

puts %w(my\appel my\ melon my\ orange my\ painappule) 

puts '------------4.7文字列を配列化-----------------------------------------'

puts 'Ruby'.chars
puts 'Ruby,PHP,perl,java'.split(',')

puts '------------4.7配列に初期値を設定する-----------------------------------------'

puts a = Array.new
puts a = Array.new(5)

puts a = Array.new(10){ |n| n % 3 + 1}

puts '------------4.7配列に初期値を設定する注意点-----------------------------------------'

a = Array.new(5, 'defalt')

str = a[0]

str.upcase!

puts a
puts '全ての要素が紐づいている'


a = Array.new(5){ 'defalt' }

str = a[0]

str.upcase!

puts a
puts 'ブロックを使うと紐づけされない'


