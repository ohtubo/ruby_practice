puts '-----------------8.モジュールを理解する----------------------'

puts '-----------------8.2.モジュールの概要----------------------'

module Greeter
  def hello
    'hello'
  end
end

#モジュールでインスタンスは作成できない
# greeter = Greeter.new

# 他のモジュールを継承して新しいモジュールを作ることはできない
# module AwesomeGreeter < Greeter
# end
puts '-----------------8.3.モジュールのミックスイン----------------------'

module Loggable
  
  # 外から呼び出されないようにlogメソッドをprivateにする
  private

  def log(text)
    puts "[LOG]#{text}"
  end

end

class Product
  include Loggable
  
  def title
    log 'title is called'
    'A great movie'
  end
end

class User
  include Loggable
  
  def name
    log 'name is called'
    'Alice'
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name

puts '-----------------8.3.モジュールのミックスイン----------------------'

