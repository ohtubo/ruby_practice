puts '-----------------ファイル出力方法--------------------------------'
puts 1 + 2

a = 'Hello, world!'
puts a

b = 'こんにちは'
puts b

puts '-----------------真偽について-------------------------------------'
find_data = nil
data = find_data

if data
 puts 'データあるよ'
else
 puts 'データないよ'
end

puts '-----------------論理演算-------------------------------------'
t1 = true
t2 = true
f1 = false
f2 = false

puts t1 && t2
puts t1 && f1
puts t1 || f1
puts f1 || f2
puts t1 && t2 || f1 && f2
puts (t1 && t2) || (f1 && f2)
puts t1 && (t2 || f1) && f2
puts !t1
puts !f1
puts !(t1 && f1)

# puts 't1 && t2 = '  t1 && t2
# puts 't1 && f1 = ' + t1 && f1
# puts 't1 || f1 = ' + t1 || f1
# puts 'f1 || f2 = ' + f1 || f2
# puts 't1 && t2 || f1 && f2 = ' + t1 && t2 || f1 && f2
# puts '(t1 && t2) || (f1 && f2) = ' + (t1 && t2) || (f1 && f2)
# puts 't1 && (t2 || f1) && f2 = ' + t1 && (t2 || f1) && f2
# puts '!t1 = ' + !t1
# puts '!f1 = ' + !f1
# puts '!(t1 && f1) = ' + !(t1 && f1)

puts '-----------------条件分岐-------------------------------------'

contory = 'itary'

if contory == 'japan'
  puts 'こんにちは'
elsif contory == 'us'
  puts 'hello' 
elsif contory == 'itary'
  puts 'ciao' 
else
  puts '???'
end

contory = 'japan'
if contory == 'japan' then puts 'こんにちは'
elsif contory == 'us' then puts 'hello' 
elsif contory == 'itary' then puts 'ciao' 
else puts '???'
end

point = 7
day = 1

point *=5 if day == 1
puts point

puts '-----------------メソッドの定義-------------------------------------'

def greeting(contory)
  if contory == 'japan'
   puts 'こんにちは'
  else
   puts 'hello' 
  end
end

greeting('japan')
greeting('us')


def add(a,b)
  puts a + b
end

add(1,2)

puts '-----------------文字列について-------------------------------------'

