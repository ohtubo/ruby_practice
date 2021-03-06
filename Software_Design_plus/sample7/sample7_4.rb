puts '-----------------7.6.クラスの継承------------------------------------'

puts '-----------------7.6.2.Objectクラスはデフォルトで継承されている------------------------------------'

class User
end

user = User.new
puts user.to_s
puts user.nil?

puts User.superclass

print user.methods.sort
puts

puts '-----------------7.6.3.Objectのクラス確認------------------------------------'

puts user.class

puts user.instance_of?(User)

puts user.instance_of?(String)

puts user.is_a?(User)
puts user.is_a?(Object)
puts user.is_a?(BasicObject)

puts '-----------------7.6.4.他class継承class作る------------------------------------'

  class Product
    attr_reader :name, :price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
    
  end
  product = Product.new('A great movie', 1000)
  puts product.name
  puts product.price
  
  class DVD < Product
    attr_reader :running_time
    
    def initialize(name,price,running_time)
      # @name = name
      # @price = price
      super(name, price)
      @running_time = running_time
    end
    
  end
  
  dvd = DVD.new('A great movie', 1000, 120)
  puts dvd.name
  puts dvd.price
  puts dvd.running_time
  
  puts '-----------------7.6.6.メソッドのオーバライド------------------------------------'
  
  class Product
    attr_reader :name, :price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
    
    def to_s
      "name: #{name}, price: #{price}"
    end
  end
  
  class DVD < Product
    attr_reader :running_time
    
    def initialize(name,price,running_time)
      super(name, price)
      @running_time = running_time
    end
    
    # def to_s
    #   "name: #{name}, price: #{price}, running_time: #{running_time}"
    # end

    def to_s
      #スーパークラスのto_sメソッドを呼び出す
      "#{super}, running_time: #{running_time}"
    end
    
  end
  
  product = Product.new('A great movie', 1000)
  puts product.to_s
  
  dvd = DVD.new('A great film', 3000, 120)
  puts dvd.to_s
  
  puts '-----------------7.6.7.クラスメソッドの継承------------------------------------'
  
  class Foo
    def self.hello
      'hello'
    end
  end
  
  class Bar < Foo
  end
  
  puts Foo.hello
  puts Bar.hello