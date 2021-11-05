puts '-----------------6.5.正規化オブジェクト詳細------------------------------------'

pattern = '\d{3}-\d{4}'

puts '123-4567' =~ /#{pattern}/

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

text = '123-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

text = '1212/10/9'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

puts '-----------------6.5.正規化オプション------------------------------------'

#iオプションは文字列大小区別しない
puts 'HELLO' =~ /hello/i
puts 'HELLO' =~ %r{hello}i

#mオプションは改行を[.]でも認識できる
puts "HELLO\nBYE" =~ /HELLO.BYE/m

#xオプションは改行スペースを無視できる為コメントを記入できる
regex = /
        \d{3} #郵便番号先頭3桁
            - #区切り文字ハイフン
        \d{4} #電話番号の末尾4桁
/x

puts '123-4567' =~ regex


#同時に使用可能
puts "HELLO\nBYE" =~ /hello.bye/im

puts '-----------------6.5.正規化マッチ結果の取得------------------------------------'

text = '私の誕生日は1997年7月17日です。'

# 結果が組み込み変数に格納される
puts text =~ /(\d+)年(\d+)月(\d+)日/
# MathDateオブジェクトを取得する
puts $~
# マッチした部分全体取得
puts $&

puts $1
puts $2
puts $3

puts $+

puts '-----------------6.5.正規化マッチ結果の取得------------------------------------'

text = '私の誕生日は2000年07月20日です。'

text =~ /(\d+)年(\d+)月(\d+)日/

puts Regexp.last_match

puts Regexp.last_match(0)
puts Regexp.last_match(1)
puts Regexp.last_match(2)
puts Regexp.last_match(3)
puts Regexp.last_match(-1)


puts /\d{3}-\d{4}/.match?('123-4567')
puts '123-4567'.match?(/\d{3}-\d{4}/)

