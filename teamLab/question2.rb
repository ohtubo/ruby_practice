# 荷物がいっぱいです
# ここに600個の荷物があり、それぞれの重さは1kg、2kg、3kg、……、600kgとなっています。これらを最大積載量5000kgのトラックを何台か使って運ぼうとしています。

# トラックに荷物を載せるのに、次のような方針を立てました。

# 重い荷物から順にトラックに載せていく。
# ある荷物を載せると最大積載量を超えてしまう場合は、新しいトラックを用意してそちらに載せる。古いほうのトラックには以降は新しい荷物は載せない。
# この方針に従うと、

# 1台目のトラックには600kg，599kg，598kg，597kg，596kg，595kg，594kg，593kgの荷物が載せられる。
# 2台目のトラックには592kg，591kg，590kg，589kg，588kg，587kg，586kg，585kgの荷物が載せられる。
# となります。最終的に何台のトラックが必要になるかを求めてください。

g = 600
t = 5000
tt = 0
count = 0

# while (tt + g) <= t || g > 0
#   tt += g
#   puts "#{count}台目貨物：#{g}kg"
#   g -= 1
#   if (tt + g ) > t
#     count += 1
#     tt = 0
#   end
# end
while g >= 0

  while (tt + g) <= t && g >= 0
    # puts "#{count+1}台目貨物：#{g}kg"
    tt += g
    g -= 1
  
  end
  puts "#{count+1}台目貨物合計：#{tt}kg"
  count += 1
  tt = 0

end


puts "トラックは#{count}台必要"

##パターン２
num = 600
weight = 600
track = 5000
i = 1
sum = 1
  for i in 1..600
    if track >= weight
      track -= weight
    else
      track = 5000
      track -= weight
      sum += 1
    end
    weight -= 1
  end
  
  puts sum


# 38