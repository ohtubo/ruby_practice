puts '-----------------5.ハッシュやシンボル-------------------------------------'

puts '-----------------5.ハッシュ-------------------------------------'

{}.class

{'japan' => 'yen','us' => 'dollar','india' => 'rupee'}

puts '-----------------5.要素の追加変更取得-------------------------------------'

currencies = {'japan' => 'yen','us' => 'dollar','india' => 'rupee'}

#追加
currencies['italy'] = 'euro'

#上書き
currencies['japan'] = '円'

puts currencies

puts currencies['india']
#ないものはNILL
puts currencies['brazil']

puts '-----------------5.繰り返し処理-------------------------------------'

currencies = {'japan' => 'yen','us' => 'dollar','india' => 'rupee'}

currencies.each do |key, value|
  puts "#{key}：#{value}"
end

#ブロック引数1つ→配列化
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}：#{value}"
end

puts '-----------------5.比較-------------------------------------'

a = {'x'=>1,'y'=>2,'z'=>3}
b = {'x'=>1,'y'=>2,'z'=>3}
c = {'z'=>3,'y'=>2,'x'=>1}
d = {'z'=>10,'y'=>2,'x'=>1}


puts a == b
puts a == c
puts a == d

{}.size
{ 'x'=>1,'y'=>2,'z'=>3 }.size

currencies = {'japan' => 'yen','us' => 'dollar','india' => 'rupee'}
currencies.delete('japan')
puts currencies

#削除データない時nill 戻り値を渡すことも可能
puts currencies.delete('italy')

puts currencies.delete('italy'){|key| "Not found: #{key}"}