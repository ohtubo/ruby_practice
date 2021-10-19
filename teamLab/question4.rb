# 切手・切手・切手
# 205円切手が30枚、82円切手が40枚、30円切手が10枚あります。

# これらの切手の全部または一部（1枚以上）を使って額面の和として表せる金額は何通りあるか、求めてください。


#組み合わせ
# a = [1, 2, 3, 4]
# b = a.combination(2).to_a

# puts b.length

# money = 120
x = 205
y = 82
z = 30

a = 30
b = 40
c = 10

count = []

for i in 0..a
  for j in 0..b
    for k in 0..c
      sum = x * i + y * j + z * k
       count.push(sum)
    end
  end
end


res = count.uniq
puts res.length - 1