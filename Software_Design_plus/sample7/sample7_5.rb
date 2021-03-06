puts '-----------------7.7.メソッド公開レベル------------------------------------'

puts '-----------------7.7.1.publicメソッド------------------------------------'
class User
  def hello
    'Hello'
  end
end
user = User.new
puts user.hello
puts '-----------------7.7.2.privateメソッド------------------------------------'
class User
  private
  
  def hello
    'hello'
  end
end
user = User.new
#privateメソッドはクラスの外部から呼び出せない
# puts user.hello

class User
  #privateメソッドはselfメソッドをつけて呼び出せない
  # def hello
  #   "Hello, I am #{self.name}"
  # end
  
  def hello
    #self無しは呼び出せる
    "Hello, I am #{name}"
  end
  
  private
  
  def name
    'Alice'
  end
end
user = User.new
puts user.hello


puts '-----------------7.7.3.privateメソッドはサブクラスでも呼び出せる(特殊)-----------'
class Product
  def to_s
    "name: #{name}"
  end
  
  private
  
  def name
    'A great movie'
  end
end
  
class DVD < Product
  private
  def name
    'A great film'
  end  
end
product = Product.new
puts product.to_s

dvd = DVD.new
puts dvd.to_s

puts '-----------------7.8.1定数について(詳細)--------------------------------------------'

  class Product
    DEFAULT_PRICE = 0
    # private_constantをつけて外部参照を出来なくする
    # private_constant :DEFAULT_PRICE
    # def foo
    #   #定数はクラス直下に定義する
    #   DEFAULT_PRICE = 0
    # end
  end
  puts Product::DEFAULT_PRICE
  
  class Product
    DEFAULT_PRICE = 0
    DEFAULT_PRICE = 1000
  end
  
  puts Product::DEFAULT_PRICE
  puts Product::DEFAULT_PRICE = 3000


puts '-----------------7.8.2ミュータブルなオブジェクトに注意--------------------------------------------'

  class Product
    NAME = 'A product'
    SOME_NAME = ['Foo', 'Bar', 'Baz']
    SOME_PRICES = {'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000}
  end

  puts Product::NAME.upcase!
  print Product::SOME_NAME << 'Hoge'
  puts
  Product::SOME_PRICES['Hoge'] = 4000
  print Product::SOME_PRICES
  puts