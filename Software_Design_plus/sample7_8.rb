puts '-----------------7.10.7.特異メソッド--------------------------------------------'
alice = 'I am Alice'
bob = 'I am Bob'

def alice.shuffle
  chars.shuffle.join
end

puts alice.shuffle
# aliceメソッドはshuffleメソッドを持つが、bobは持たない為エラーになる
# puts bob.shuffle


# 数値やシンボルは実装上の制約により定義できない
# n = 1
# def n.foo
#   'foo'
# end

# sym = :alice
# def sym.ber
#   'bar'
# end

alice = 'I am Alice'

class << alice
  def shuffle
    chars.shuffle.join
  end
end

puts alice.shuffle
puts '-----------------7.10.8.クラスメソッドは得意メソッドの一種----------------------'
puts '------クラスメソッド--------------------'

class User
  def self.hello
    'Hello'
  end
  
  class << self
    def hi
      'Hi.'
    end
  end
end

puts User.hello
puts User.hi

puts '------特異メソッド--------------------'
alice = 'I am alice.'

def alice.hello
  'Hello! '
end

class << alice
  def hi
    'Hi! '
  end
end

puts alice.hello
puts alice.hi

class User
end

def User.hello
 'Hello?'
end

class << User
  def hi
    'Hi?'
  end
end

puts User.hello
puts User.hi

puts '-----------------7.10.9.ダックタイピング----------------------------------------'
