# ・三辺の長さが3，4，5である三角形は直角三角形です。これは「ピタゴラスの定理」から示されます。
# * 【ピタゴラスの定理】 直角三角形について、直角をはさむ2辺の長さがaとbで斜辺の長さがcであるとき a2 + b2 = c2 が成り立つ。
# つまり、32 + 42 = 52（ = 25）が成立するので直角三角形といえるのです。
# 三辺の長さが整数で面積が8000以下である直角三角形は何種類あるかを求めてください。
# ※合同なもの（例えば“3，4，5”と“5，4，3”）は区別せず1種類として数えます。

#ピタゴラス数より
# https://mathwords.net/pitagorasusuu

m = 2
n = 1
a = 0
b = 0
c = 0
count = 0
now_count = 0
area = 0
max_area = 8000
s = []

## a=m2 −n2 ,b=2mn,c=m2+n2
 while area <= max_area
  while area <= max_area
    a = (m * m) - (n * n)
    b = 2 * m * n
    c = (m * m) + (n * n)
    area = (a * b) / 2.0
    m += 1
    if area <= max_area
      s << [a,b,c,area]
      count += 1
      now_count += 1
    end
  end
    if now_count < 1
      break
    end
    now_count = 0
    area = 0
    n += 1
    m = n + 1
 end
  
  # puts "#{s}"
  puts "面積8000以下の組み合わせ[#{count}}]通り"
  
  # for ii in 0..84
  #   for i in 0..84
  #     if s[i][3] == s[ii][3] && i != ii
  #       puts "#{s[i]} == #{s[ii]}"
  #     end
  #   end
  # end
  
  
  

  

  
  
  