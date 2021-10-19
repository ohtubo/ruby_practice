# ・1234567890の正の約数のうち、30000000以下のものを全て足し合わせたときの和を求めてください。

# 正の約数を求める

num = 1234567890
max_sum = 30000000
sum = 0

for i in 1..num
  if num % i == 0 && i <= max_sum
    sum += i
    print "#{i}, "
  elsif i > max_sum
    break
  end
end

puts "合計は#{sum}"
