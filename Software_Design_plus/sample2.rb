puts '=================Rubyの基礎====================================='

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

puts 'abc'.class
puts %q!He said, "Don't speak."!
something = "Hello."
puts %Q!He said, "#{something}"!
something = "Bye."
puts %!He said, "#{something}"!

puts "Line 1,
Line 2"
puts 'Line 1,
Line 2'

text = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts text

def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデックスさせることが出来ます。
  TEXT
end
puts some_method

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと最後の識別子をインデックスさせることが出来ます。
  TEXT
end
puts some_method

name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージを確認してください。
TEXT
puts a

a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージを確認してください。
TEXT
puts a

puts '-----------------フォーマット指定文字列-------------------------------------'

puts sprintf('%0.3f',1.2)
puts '%0.3f' % 1.2
puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts '%0.3f + %0.3f'% [1.2, 0.48]

puts '-----------------ビット演算-------------------------------------'

puts (-0b1010).to_s(2)
puts (0b1010 & 0b1100).to_s(2)
puts (0b1010 | 0b1100).to_s(2)
puts (0b1010 ^ 0b1100).to_s(2)
puts (0b1010 >> 1).to_s(2)
puts (0b1010 << 1).to_s(2)

puts '-----------------指数表現-------------------------------------'

puts 2e-3

puts '-----------------真偽値の条件分岐-------------------------------------'

puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts false || nil
puts nil || false || 2 || 3

# user = find_user('Alice') || find_user('Bob') || find_user('Carol')
# user.valid? && send_email_to(user)

t1 = true

puts '-----------------条件演算子-------------------------------------'

n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

n = 11
message = n > 10? 'a10より大きい' :  'a10以下'
puts message

puts '-----------------メソッドの定義詳細版-------------------------------------'

# 引数を柔軟に変える方法
def greeting(contory = 'japan')
  if contory == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeting
puts greeting('us')

def defalt_args(a, b, c = 0, d = 0)
  "a=#{a},b=#{b},c=#{c},d=#{d}"
end

puts defalt_args(1,2)
puts defalt_args(1,2,3)
puts defalt_args(1,2,3,4)

def foo(time = Time.now, message = bar)
  "time:#{time}, message:#{message}"
end

def bar
  'BAR'
end 

puts foo

puts '-----------------?で終わるメソッド-------------------------------------'


puts ''.empty?
puts 'abc'.empty?
puts 'watch'.include?('at')
puts 'watch'.include?('in')
puts 1.odd?
puts 2.odd?
puts 1.even?
puts 2.even?
puts nil.nil?

def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(4)
puts multiple_of_three?(6)


puts '-----------------参照------------------------------------'

a = 'hello'
b = 'hello'

puts "a = #{a.object_id}"
puts "b = #{b.object_id}"

c = b
puts "c = #{c.object_id}"

def m(d)
  "d = #{d.object_id}"
end
puts m(c)

puts a.equal?(b)
puts b.equal?(c)

puts '-----------------破壊的参照------------------------------------'

a = 'hello'
b = 'hello'
c = b

def m!(d)
  d.upcase!
end

m!(c)

puts "d = #{b}"
puts "c = #{c}"
puts "a = #{a}"
