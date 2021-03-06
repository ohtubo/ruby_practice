# 約数的ソート
# 2から1000000までの整数を以下の規則に従ってソート（整列）をします。

# 「1以外の最小の約数」が大きい順に並べる。例えば、143（約数は11）は147（約数は3）よりも前になる。
# 「1以外の最小の約数」が同じ場合は、その数自身が大きい順に並べる。例えば、119（約数は7）は91（約数は7）よりも前になる。
# この規則でソートした場合、先頭から240001番目にある整数（先頭は“1番目”と数えます）は何かを求めてください。

# s = []
# i = 2
# while i <= 1000000
#   s[i-1] = i
#   i += 1
# end

# puts s.size

#パターン２

#約数的ソート
start = 2
finish = 1000000

n = finish - start

num = Array.new(n)
result = Array.new(n)
a = start
k = 0
l = 0

for i in 0..n
  num[i] = a
  a += 1
end

for j in start..finish
  while k < num.length
    if num[k] % j == 0
      result[l] = num[k]
      num.delete_at(k)
      l += 1
    end
    k += 1
  end
  k = 0
end

result.reverse!

puts result[240002]