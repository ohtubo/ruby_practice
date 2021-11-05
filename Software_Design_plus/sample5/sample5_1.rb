puts '-----------------5.ハッシュやシンボル-------------------------------------'

puts '-----------------5.2.ハッシュ-------------------------------------'

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

puts '-----------------5.3.シンボルと文字列の違い------------------------------------'

#シンボル型とは

puts :apple.class
puts 'apple'.class

#シンボルは同じID
puts ":apple.object_id:#{:apple.object_id} "
puts ":apple.object_id:#{:apple.object_id} "
puts ":apple.object_id:#{:apple.object_id} "

#文字列は違うID
puts "'apple'.object_id:#{'apple'.object_id} "
puts "'apple'.object_id:#{'apple'.object_id} "
puts "'apple'.object_id:#{'apple'.object_id} "

#シンバルはイミュータブルなオブジェクトの為破壊的な適用が出来ない(エラーになる)
# puts :apple.upcase! 
# puts 'apple'.upcase!

puts '-----------------5.3.シンボルの使用例------------------------------------'

currencies = {'japan' => 'yen','us' => 'dollar','india' => 'rupee'}
puts currencies['japan']

currencies = {:japan => 'yen',:us => 'dollar',:india => 'rupee'}
puts currencies[:japan]

print :apple.methods
puts
print 'apple'.methods
puts

puts '-----------------5.4.ハッシュにシンボルを使う------------------------------------'

currencies = {:japan => 'yen',:us => 'dollar',:india => 'rupee'}
currencies[:italy] = 'euro'
print currencies
puts

#別の方法
currencies = {japan: 'yen',us: 'dollar',india: 'rupee'}
puts currencies[:us]

#ハッシュニア格納する値はよく異なるデータが入る

person = {
  name: 'Alice',
  age: 20,
  friends: ['Bod','Carol'],
  phones: {home: '1234-000', mobile: '5678-0000'}
}

puts person[:age]
print person[:friends]
puts
puts person[:phones][:mobile]

puts '-----------------5.3.メソッドのキーワード引数とハッシュ------------------------------------'

def buy_burger(menu, drinek, potato)
  puts 'ハンバーガーを購入'
  if drinek
    puts 'ドリンクを購入'
  end
  if potato
    puts 'ポテトを購入'
  end
end

#これのみだとどの引数が何かよくわからない
buy_burger('cheese', true, true)

#キーワード引数を定義する
def buy_burger(menu, drinek: true, potato: true)
  puts "ハンバーガーを購入：#{menu}"
  if drinek
    puts 'ドリンクを購入'
  end
  if potato
    puts 'ポテトを購入'
  end
end

buy_burger('fish', drinek: true, potato: false)
#デフォルト値は省略出来る
buy_burger('double', potato: false)
#順番も入れ替えられる
buy_burger('shrimp', potato: true, drinek: true )
