# puts '------------例題：RGB変換プログラム-----------------------------------------'

# def to_hex(r , g , b)
#   # '#000000'
#   '#' + 
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0')
# end

# puts '------------例題：RGB変換プログラム(リファクタリング版)-----------------------------------------'

# def to_hex(r , g , b)
#   hex = '#'
#   [r , g , b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end
# # puts to_hex(255 , 255 , 255)

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

puts '------------例題：RGB変換プログラム(リファクタリング上位版)-----------------------------------------'

def to_hex(r , g , b)
  [r , g , b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # r, g, b = hex[1..2], hex[3..4] ,hex[5..6]
  hex.scan(/\w\w/).map(&:hex)
  # [r, g, b].map do |s|
  #   s.hex
  # end
end