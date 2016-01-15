
cases = gets.strip.chomp.to_i
cases.times do
  days = gets.strip.chomp.to_i
  prices = []
  prices = gets.strip.chomp.split(' ').map(&:to_i)
  profit = 0

  local_max = prices[days - 1]
  (days - 2).downto(0) do |d|
    if local_max > prices[d]
      profit += local_max - prices[d]
    else
      local_max = prices[d]
    end
  end
  puts profit
end



