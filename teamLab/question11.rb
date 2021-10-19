# #掛け算耐性
# 整数に対して、「一桁ことにばらして各桁の数字の積を求める」という操作を考えます。

# 123 → 1 × 2 × 3 = 6
# 666 → 6 × 6 × 6 = 216
# 1024 → 1 × 0 × 2 × 4 = 0
# 任意の整数について、「操作」を繰り返し適用すると、最終的には一桁の数に到達します。

# 77 → 49 → 36 → 18 → 8
# 123456 → 720 → 0
# 一桁の数に到達するのに必要な「操作」の回数は、77では4回、123456では2回となります。

# それでは、1000000以下の整数のうち、一桁の数に到達するのに必要な「操作」の回数が3回となるものはいくつあるかを、求めてください。


count = 0
a_count = 0


for ii in 10..1000000
  
  result = ii
  while result >= 10
    str = result.to_s
    result = 1
    for i in 0..(str.length - 1)
      result *= str[i].to_i
    end
    count += 1
  end
  
  # p count
  
  if count == 3
    # print "三回到達数[#{ii}]"
    a_count += 1
  end
  
  count = 0
  
end

puts "値：#{a_count}"