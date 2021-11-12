puts '-----------------7.5.1.selfキーワード------------------------------------'



class User
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def hello
    name = 'Bob'
    puts "Hello, I am #{name}."
  end
  
  def hi
    self.name = 'Carol'
    puts "Hi, I am #{self.name}."
  end
  
  def my_name
    @name = 'Dave'
    puts "My name is #{@name}."
  end
end

user = User.new('Alice')
puts '-----------------7.5.selfなし'
user.hello
puts user.name
puts '-----------------7.5.selfあり'
user.hi
puts user.name
puts '-----------------7.5.@nameあり'
user.my_name
puts user.name

puts '-----------------7.5.2.クラスメソッド,クラス構文直下のself------------------------------------'

class Foo

  puts "クラス構文直下のself:#{self}"
  
  def self.bar 
    puts "クラスメソッド内のself: #{self}"
    # エラー：クラスメソッド内でインスタンスメソッドを呼び出す
    # self.bar
  end
  
  def baz
    puts "インスタンスメソッド内のself: #{self}"
    # エラー：インスタンスメソッド内でクラスメソッドを呼び出す
    # self.bar
  end

end

Foo.bar

foo = Foo.new
foo.baz

class Foo
  
  #この時点ではクラスメソッドbarが定義されていないので呼び出せない
  # self.bar
  
  def self.bar
    puts 'hello'
  end
  
  self.bar
  
  3.times do
    puts 'godbay'
  end
end

puts '-----------------7.5.3.クラスメソッドをインスタントメソッドで呼び出す------------------------------------'

class Product

  attr_reader :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
  
  def self.format_price(price)
    "#{price}円"
  end
  
  def to_s
    # インスタンスメソッドからクラスメソッドを呼び出す。
    # formatted_price = Product.format_price(price)
    formatted_price = self.class.format_price(price)
    "#{name}, price: #{formatted_price}"
  end
end

product = Product.new('A great movie', 1000)
puts product.to_s