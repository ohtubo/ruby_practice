puts '------------4.10繰り返し処理制御構造(break)-----------------------------------------'

number = [1,2,3,4,5].shuffle

number.each do |n|
  puts n
  break if n == 5
end

puts '------'
fruits = ['apple', 'melon', 'orange']
number = [1,2,3]

fruits.each do |fruit|
  number.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

puts '------------4.10繰り返し処理制御構造(throw,catch)-----------------------------------------'
fruits = ['apple', 'melon', 'orange']
number = [1,2,3]

catch :done do
  fruits.shuffle.each do |fruit|
    number.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end

puts '------------4.10繰り返し処理制御構造(next)-----------------------------------------'
#繰り返し処理を途中で中断し、次の繰り返し処理に移る
number = [1,2,3,4,5]
number.each do |n|
  next if n.even?
  puts n
end

puts '------------4.10繰り返し処理制御構造(redo)-----------------------------------------'
#繰り返し処理をやり直したい場合

foods = ['ピーマン','トマト','セロリ']
foods.each do |food|
  print "#{food}は好きですか？ =>"
  answer = ['はい','いいえ'].sample
  puts answer
  
  redo unless answer == 'はい'
end