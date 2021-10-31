puts '-----------------5.6.ハッシュ詳細------------------------------------'

puts '-----------------5.6.使用度高いメソッド------------------------------------'

currencis = {japan: 'yen', us: 'dollar', india: 'rupee'}
print currencis.keys
puts

print currencis.values
puts

puts currencis.has_key?(:japan)
puts currencis.has_key?(:itary)

puts '-----------------5.6.ハッシュの展開------------------------------------'

h = {us: 'dollar', india: 'rupee' }

{japan: 'yen', **h}
{japan: 'yen'}.merge(h)

puts '-----------------5.6.擬似キーワード引数------------------------------------'

def buy_burger(menu, option = {})
  drink = option[:drink]
  potato = option[:potato]
end

puts buy_burger('cheese', drink: true, potato: true)

puts '-----------------5.6.任意のキーワード受け取る------------------------------------'

def buy_burger(menu, drink: true, potato: true, **others)
  print others
  puts
end

buy_burger('fish', drink: true, potato: true, salad: true, chicken: false)

puts '-----------------5.6.ハッシュリテラル{}とブロック{}------------------------------------'

def buy_burger(menu, opitions ={})
  print opitions
  puts
end

#第二引数以降であれば省略が可能
buy_burger 'fish' , 'drink' => true, 'potato' => false


def buy_burger(opitions ={}, menu)
  print opitions
  puts
end

#第一引数に()無しでハッシュを渡すとブロックと勘違いされる
# buy_burger 'drink' => true, 'potato' => false, 'fish'



