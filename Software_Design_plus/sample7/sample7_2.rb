puts '-----------------7.3.クラスの定義------------------------------------'

class User

  def initialize(name, age)
    puts 'Initialized.'
    puts "name: #{name} , age: #{age}"
  end
  
  def hello
    puts "Hello"
  end

end
user = User.new('Alice', 20)
user.hello
#initializeは外部から呼び出せない。
# user.initialize

puts '-----------------7.3.インスタンス変数とアクセサメソッド------------------------------------'
class User
  
  def initialize(name)
    @name = name
  end
  
  def hello
    puts "Hello, I am #{@name}."
  end
  
end

user = User.new('Alice')
user.hello


class User
  def hello
    shuffled_name = @name.chars.shuffle.join
    puts "Hello, I am #{shuffled_name}."
  end
end

user = User.new('Alice')
user.hello

#インスタント変数は外部から参照変更不可。参照変更用メソッド作成は可能
class User
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
end

user = User.new('Alice')
puts user.name


class User
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

user = User.new('Alice')
user.name = 'Bob'
puts user.name

puts '-----------------7.3.クラスメソッドの定義------------------------------------'

class User
  def initialize(name)
    @name = name
  end
  
  def hello
    puts "Hello, I am #{@name}."
  end
  
  alice = User.new('Alice')
  
  alice.hello
  
  bob = User.new('Bob')
  
  bob.hello

end

class User
  def initialize(name)
    @name = name
  end

  def self.create_user(names)
    names.map do |name|
      User.new(name)
    end
  end
  
  def hello
    "Hello, I am #{@name}."
  end
end

names = ['Alice', 'Bob', 'Jon']

users = User.create_user(names)
users.each do |user|
  puts user.hello
end

puts '-----------------7.3.定数------------------------------------'

class Product

  DEFAULT_PRICE = 0

  attr_reader :name, :price
  
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
puts product.price