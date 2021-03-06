puts '-----------------7.10.クラス定義,Ruby言語使用高度な話題------------------'

puts '-----------------7.10.1.エリアメソッドの定義--------------------------------------------'

s = 'Hello'
puts s.length
puts s.size

class User
  def hello
    'Hello!'
  end
  
  alias greeting hello
end

user = User.new
puts user.hello
puts user.greeting
puts '-----------------7.10.2.メソッドの削除--------------------------------------------'

class User
  undef freeze
end

user = User.new
# freezeメソッドを呼び出すとエラーになる
# user.freeze
puts '-----------------7.10.3.ネスとしたクラスの定義--------------------------------------------'

class User
  class BloodType
    attr_reader :type
    
    def initialize(type)
      @type = type
    end
    
  end
end

blood_type = User::BloodType.new('B')
puts blood_type.type

puts '-----------------7.10.4.演算子の挙動独自再定義--------------------------------------------'

class User

  def name=(value)
    @name = value
  end
  
end

user = User.new
puts user.name = 'Alice'

#パターン１
class Product
  attr_reader :code, :name
  
  def initialize(code,name)
    @code = code
    @name = name
  end
end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome file')
c = Product.new('A-0001', 'A great movie')

#(object_id)が一致したときにtrue
puts a == a
puts a == b
puts a == c


#パターン２
class Product

  def ==(other)
    if other.is_a?(Product)
      code == other.code
    else
      false
    end
  end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome file')
c = Product.new('A-0001', 'A great movie')

#商品コードが一致したときにtrue
puts a == a
puts a == b
puts a == c

end


puts '-----------------7.10.5.等値を判断するメソッドや演算子--------------------------------------------'


puts '---equal---'
a = 'abc'
b = 'abc'

puts a.equal?(b)

c = a
puts a.equal?(c)

puts '---==---'
puts 1 == 1.0

puts '---eql?---'
h = {1 => 'Integer', 1.0 => 'Float'}
h[1]
h[1.0]

puts 1.eql?(1.0)

a = 'japan'
b = 'japan'

a.eql?(b)
a.hash
b.hash

c = 1
d = 1.0

puts c.eql?(d)
puts c.hash
puts d.hash

puts '-----------------7.10.6.オープンclassとモンキーパッチ--------------------------------------------'

class MyString < String
  
end
s = MyString.new('Hello')
puts s
puts s.class

class MyArray < Array
  
end
a = MyArray.new()
a << 1
a << 2
puts a.class

class String 
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello, I am Alice.'
puts s.shuffle
puts s.shuffle

# puts 'MyString'.underscore

# number = [1, 2, 3]
# 2.in?(number)
# 5.in?(number)

class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}!"
  end
end

user = User.new('Alice')
puts user.hello

class User
  def hello
    "#{@name}さん、こんにちは！"
  end
end

puts user.hello

class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}"
  end
end

class User

  alias hello_original hello
  
  def hello
    "#{hello_original}じゃなくて、#{@name}さん、こんにちは！"
  end

end

user = User.new('Alice')
puts user.hello