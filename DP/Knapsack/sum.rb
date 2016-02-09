test_cases = gets.to_i
test_cases.times do
  n, k = gets.split(' ').map(&:to_i)
  a = gets.split(' ').map(&:to_i)

  nearest = Hash.new
  nearest[0] = 0

  1.upto(k) do |i|
    0.upto(n) do |j|
      diff = i - a[j] if i >= a[j]
      nearest[i] = [nearest[i], nearest[diff] + diff].min
    end

    puts nearest
  end
end
