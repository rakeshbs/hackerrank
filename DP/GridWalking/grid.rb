def walk(current_position, m)
  code = code_for_hash(current_position, m)
  return 0 if check_crossed_limit(current_position)
  return @cache[code] unless @cache[code].nil?

  if (m == 0)
    return 1
  else
    ways = 0
    0.upto(@n - 1) do |i|
      new_position = current_position.clone
      new_position[i] = new_position[i] + 1
      ways += walk(new_position, m - 1)
      new_position[i] = new_position[i] - 2
      ways += walk(new_position, m - 1)
      @cache[code] = ways
    end
    return ways
  end
end


def check_crossed_limit(x)
  x.each_with_index do |val, i|
    if val > @dimensions[i] || val <= 0
      return true
    end
  end
  false
end

def code_for_hash(x, m)
  result = 1
  x.each_with_index do |val, i|
    result = result * 1000 + val
  end
  result * 1000 + m
end

cases = gets.strip.chomp.to_i
cases.times do

  @n,m = gets.strip.chomp.split(' ').map(&:to_i)
  start = gets.strip.chomp.split(' ').map(&:to_i)
  @dimensions = gets.strip.chomp.split(' ').map(&:to_i)
  @cache = {}
  puts walk(start, m) % 1000000007
end

