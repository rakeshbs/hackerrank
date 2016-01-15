n = gets.chomp.strip.to_i
ratings = []
n.times do
  ratings << gets.chomp.strip.to_i
end

candies = [0] * n
candies[0] = 1
1.upto(n - 1) do |i|
  if ratings[i] > ratings[i - 1]
    candies[i] = candies[i - 1] + 1
  else
    candies[i] = 1
  end
  i.downto(1) do |j|
    if ratings[j] < ratings[j - 1]
      if candies[j] >= candies[j - 1]
        candies[j - 1] = candies[j] + 1
      end
    end
  end
end

puts candies.inject(:+)
