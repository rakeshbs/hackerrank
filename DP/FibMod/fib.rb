a,b,n = gets.strip.chomp.split(' ').map(&:to_i)

3.upto(n) do
  res = b * b + a
  a = b
  b = res
end

puts b
