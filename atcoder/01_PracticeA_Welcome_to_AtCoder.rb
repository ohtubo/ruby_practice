
# 問題文
# 高橋君はデータの加工が行いたいです。

# 整数 a,b,cと、文字列 s が与えられます。 a+b+c の計算結果と、文字列 s を並べて表示しなさい。

# 制約
# 1≤a,b,c≤1,000
# 1≤∣s∣≤100

a = gets.to_i
b,c = gets.chomp.split(" ").map(&:to_i);
s = gets.chomp

print "#{a + b + c} #{s}\n"
