# ・整数Nについて、1からNまでの整数の逆数の和を「Nまでの逆数和」と呼ぶことにします。
# * 1までの逆数和 = 1/1 = 1
# * 2までの逆数和 = 1/1 + 1/2 = 1.5
# * 3までの逆数和 = 1/1 + 1/2 + 1/3 = 1.8333333333…
# * 4までの逆数和 = 1/1 + 1/2 + 1/3 + 1/4 = 2.0833333333…
# Nまでの逆数和が12を超えるような最小のNを求めてください。

num = []
sum = 0
count = 0
sum_reciprocal = 12
while sum < sum_reciprocal
  count += 1
  reciprocal = 1.0/count
  num << reciprocal
  sum = num.sum
end

puts "逆数和#{sum}"
puts "逆数#{num.length}"
