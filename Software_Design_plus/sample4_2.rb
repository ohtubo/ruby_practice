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