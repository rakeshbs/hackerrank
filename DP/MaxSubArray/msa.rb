t = gets.strip.chomp.to_i

1.upto(t) do
  n = gets.strip.chomp.to_i
  array = gets.strip.chomp.split(' ').map(&:to_i)

  max_so_far = 0
  max = nil
  sum = 0
  array.each do |i|
    sum += i if i > 0
    max_so_far = [i, max_so_far + i].max
    if max.nil?
      max = max_so_far
    else
      max = [max_so_far, max].max
    end
  end
  if sum == 0
    sum = array.max
  end
  puts "#{max} #{sum}"
end
