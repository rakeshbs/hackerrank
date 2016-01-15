test_cases = gets.to_i

def fact(n)
  return 1 if n == 0
  (1..n).inject(:*)
end

1.upto(test_cases) do
  string = gets.strip.chomp
  pairs = Hash.new { |h,k| h[k] = 0 }
  1.upto(string.length - 1) do |length|
    0.upto(string.length - length) do |i|
      sub = string[i..(i+length - 1)].split('').sort.join('').chomp.strip
      #p sub
      pairs[sub] += 1 unless sub == ""
    end
  end
  sum = 0
  pairs.each do |key,n|
    sum += fact(n)/(2 * fact(n - 2)) if n > 1
  end
  puts string.size
  puts string
  puts pairs
  puts sum
end
