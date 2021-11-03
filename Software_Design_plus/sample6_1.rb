puts '-----------------6.2.正規表現とは------------------------------------'

text = <<TEXT
I love Ruby.
python is a great language.
Java and JavaScript are different.
TEXT

print text.scan(/[A-Z][A-Za-z]+/)
puts

text = <<TEXT
私の郵便番号は1234567です。
私の住所は6770056兵庫県西脇市板波町1234だよ。
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

puts '-----------------6.3.正規表現オブジェクトの作成------------------------------------'

regex = /\d{3}-\d{4}/
puts regex.class

puts '123-4567' =~ /\d{3}-\d{4}/
puts 'hello' =~ /\d{3}-\d{4}/

#if文に活用できる。
if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end
    
#！～にも対応している
puts '123-4567' !~ /\d{3}-\d{4}/
puts 'hello' !~ /\d{3}-\d{4}/

text = '私の誕生日は199年7月17日です'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
print m
puts
puts m[1]
puts m[2]
puts m[3]

#キャプチャに名前を付ける
text = '私の誕生日は1996年8月08日です'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/.match(text)

puts m[:year]
puts m[:month]
puts m[:day]

puts m['year']

puts m[2]

text = '私の誕生日は1995年3月08日です'

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/ =~ text
  puts "#{year}/#{month}/#{day}"
end

#逆記入は不可能
if  text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/ 
  puts "#{year}/#{month}/#{day}"
end

puts '-----------------6.3.正規表現と組み合わせると便利なStringメソッド------------------------------------'

puts '-----------------6.3.scan------------------------------------'

print '123 456 789'.scan(/\d+/)
puts
print '1999年01月01日 2020年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
puts
print '1999年01月01日 2020年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
puts

puts '-----------------6.3.[],slice------------------------------------'

text = '郵便番号は123-4567です'
print text[/\d{3}-\d{4}/]
puts

text = '郵便番号は123-4567 456-6789です'
print text[/\d{3}-\d{4}/]
puts

text = '誕生日は2021年01月10日です'
print text[/(\d+)年(\d+)月(\d+)日/]
puts
print text[/(\d+)年(\d+)月(\d+)日/, 3]
puts

#シンボルでキャプチャの名前を表示する
print text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/, :day]
puts

#文字列でキャプチャの名前を表示する
print text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/, 'day']
puts

text = '郵便番号は123-4567です'
print text.slice(/\d{3}-\d{4}/)
puts

text = '郵便番号は123-4567です'
print text.slice!(/\d{3}-\d{4}/)
puts text
puts '-----------------6.3.spliit------------------------------------'

puts '-----------------6.3.gsub,gsub!------------------------------------'
