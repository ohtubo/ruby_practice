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

