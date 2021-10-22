puts '------------4.8ブロック詳細-----------------------------------------'

fruist = ['apple', 'orange', 'melon']

#each_with_indexで[i]に要素番号が入る
fruist.each_with_index { |fruit, i| puts "#{i}: #{fruit}"}

#mapメソッドの場合 with_indexに値を渡すとその数から開始される
fruist.map.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}

#`a`を含むかつ、奇数の要素番号は削除
puts fruist.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

puts '------------4.8配列がブロック引数に渡される-----------------------------------------'

dimesion = [
  [10, 20],
  [30, 40],
  [50, 60],
  ]
  
areas = []

dimesion.each do |length, width|
  areas << length * width
end

puts areas

# each_with_indexの場合 (length, width)にしないとlengthにまとめてはいる

dimesion.each_with_index do |(length, width), i|
  puts "length：#{length}, width：#{width}, i：#{i}"
end


File.open("./sample4_3.txt", "w")do |file|
  file.puts("1行目のテキストです")
  file.puts("2行目のテキストです")
  file.puts("3行目のテキストです")
end

