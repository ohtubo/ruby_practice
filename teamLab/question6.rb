# ・1から50までの整数の4乗の和を求めてください。

number = 1
max_number = 50
  sum = 0

  while number <= max_number
    sum += number * number * number * number
    number += 1
  end

puts sum 
