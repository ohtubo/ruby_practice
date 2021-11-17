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
