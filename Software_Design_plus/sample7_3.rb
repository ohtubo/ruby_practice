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
  end
  
  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end

end

Foo.bar

foo = Foo.new
foo.baz