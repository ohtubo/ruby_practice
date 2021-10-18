# ・次の条件の少なくとも一方を満たす整数のことを「A的な数」と呼ぶことにします。
# * 3の倍数である。
# * 十進法で書いた場合に「3」が含まれる。
# 例えば、9、31、42、135は何れも「A的な数」です。
# 1から20000までの整数のうち「A的な数」だけを足し合わせたときの合計を求めてください。 

num = 20000
sum = 0

for i in 1..num
  if i % 3 == 0
    sum += i
    print "[倍]#{i}, "
  else
    str = i.to_s
    for ii in 1..str.length
      if str[ii] == "3"
        sum += i
        print "[A]#{i}, "
        break
      end
    end
  end
end

puts "合計:#{sum}"
