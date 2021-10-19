# ・円周率８００桁を14,41,14,51......と分けた時に一番多くの数字がでるのはなにか？

pi = 14159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196442881097566593344612847564823378678316527120190914564856692346034861045432664821339360726024914127372458700660631558817488152092096282925409171536436789259036001133053054882046652138414695194151160943305727036575959195309218611738193261179310511854807446237996274956735188575272489122793818301194912983367336244065664308602139494639522473719070217986094370277053921717629317675238467481846766940513200056812714526356082778577134275778960917363717872146844090122495343014654958537105079227968925892354201995611212902196086403441815981362977477130996051870721134999999837297804995105973173281609631859.to_s

str = Array.new(100)
str_count = 0
counts = Array.new(100)

# (pi.length - 2) ; 800番目は一桁,要素開始[0]の為799が最後
for i in 0..(pi.length - 2)
  s = pi[i] + pi[i + 1]
  for ii in 0..str.length
    if s == str[ii]
      if counts[ii] == nil
        counts[ii] = 1
        # p "#{str[ii]}, 個数#{counts[ii]}"
      else
        counts[ii] += 1
        # p "#{str[ii]}, 個数#{counts[ii]}"
      end
      break
    elsif ii == str.length
      str[str_count] = s
      # p "#{str[str_count]}, 個数0"
      str_count += 1
      break
    end
  end
end

counts = counts.compact
# print "#{counts}, "
for iii in 0..100
  # print "[出現数#{counts[iii]}, 数字#{str[iii]}], "
  if counts[iii] == counts.max
  puts "最大出現数：#{counts.max}, 数字：#{str[iii]}"
  end
end


# print "#{str}, "

