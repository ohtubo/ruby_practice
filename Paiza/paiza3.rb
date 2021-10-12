# N = gets.to_i
# i = 1
# name = []
# age = []

# if 1 <= N && N <= 50
#     while i <= N do
#         s = gets.chomp.split(" ")
#         name[i] = s[0]
#         age[i] = s[1].to_i
#         age[i] += 1
#         i += 1
#     end
    
#     i = 1
#     while i <= s.size do
#       puts "#{name[i]} #{age[i]}"
#       i += 1
#     end
    
# end

n = gets.to_i

roster = Array.new(n)
n.times { |i| roster[i] = gets.split(' ') }

roster.each do |member|
  name = member[0]
  age = member[1].to_i

  puts name + ' ' + (age + 1).to_s
end