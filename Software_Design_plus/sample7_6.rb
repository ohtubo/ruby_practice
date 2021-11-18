puts '-----------------7.9.様々な種類の変数--------------------------------------------'

puts '-----------------7.9.1.クラスインスタンス変数--------------------------------------------'

class Product
  @name = 'Product'
  
  def self.name
    @name
  end
  
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end
  
end

class DVD < Product

  @name = 'DVD'
  
  def self.name
    @name
  end
  
  def upcase_name
    @name.upcase
  end  

end

puts Product.name
puts DVD.name


product = Product.new('A great movie')
puts product.name

dvd = DVD.new('An awesome file')
puts dvd.name
puts dvd.upcase_name

puts Product.name
puts DVD.name

puts '-----------------7.9.2.クラス変数--------------------------------------------------------'

class Product
  @@name = 'Product'
  
  def self.name
    @@name
  end
  
  def initialize(name)
    @@name = name
  end
  
  def name
    @@name
  end
  
end

class DVD < Product

  @@name = 'DVD'
  
  def self.name
    @@name
  end
  
  def upcase_name
    @@name.upcase
  end  

end

puts Product.name
puts DVD.name


product = Product.new('A great movie')
puts product.name

puts Product.name
puts DVD.name

dvd = DVD.new('An awesome file')
puts dvd.name
puts dvd.upcase_name

product.name
puts Product.name
puts DVD.name


puts '-----------------7.9.3.グローバル変数とインスタンス変数--------------------------------------------'

$program_name = 'Awesome program'
class Product
  def initialize(name)
    $program_name = name
  end
  
  def self.name
    $program_name
  end
  
  def name
    $program_name
  end
  
end

puts Product.name

product = Product.new('Super program')
puts product.name

puts Product.name
puts $program_name