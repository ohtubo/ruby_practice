puts '-----------------7.2.オブジェクト指向プログラミングの基礎------------------------------------'

class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name,last_name,age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end

end

users = []
# users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
# users << { first_name: 'Bob', last_name: 'Python', age: 30 }
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end

users.each do |user|
  puts "氏名：#{user.full_name},年齢：#{user.age}"
  # puts "氏名：#{full_name(user)},年齢：#{user[:age]}"
  # puts "氏名：#{user[:first_name]} #{user[:last_name]},年齢：#{user[:age]}"
end

#クラスを定義するとシンボルのタイプミスもエラーとなる
# puts users[0][:first_mame]
# puts users[0].first_mame
#属性追加,データ内変更も勝手にできなくなる
# users[0].country = 'japan'
# users[0].first_mame = 'Carol'

puts '-----------------7.2.属性------------------------------------'

class User2

  attr_accessor :first_name

  def initialize(first_name,last_name,age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

end

user = User2.new('Alice', 'Ruby', 20)
puts user.first_name
user.first_name = 'ありす'
puts user.first_name



