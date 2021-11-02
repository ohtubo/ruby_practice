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
puts m[1]
puts m[2]
puts m[3]