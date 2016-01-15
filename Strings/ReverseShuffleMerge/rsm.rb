def check(letter_hash, count_hash, character, index)
  letter_hash.each do |char, array|
    if char != character
      count = array.inject(0) {|s,i| s += 1 if i > index;s;}
      return false if count < count_hash[char]
    end
  end
  return true
end
string = gets.strip.chomp.reverse

letter_hash = Hash.new { |h,k| h[k] = [] }
count_hash = Hash.new { |h,k| h[k] = 0 }

0.upto(string.length - 1) do |i|
  letter_hash[string[i]] << i
  count_hash[string[i]] += 1
end
count_hash.each do |char, count|
  count_hash[char] /= 2
end

number_letters = string.length / 2
current_index = -1
result = ""
0.upto(number_letters - 1) do |n|
  min_char = ""
  min_index = 100000
  count_hash.each do |char, count|
    next if count_hash[char] <= 0
    letter_hash.each do |c, array|
        while letter_hash[c].count > 0 && letter_hash[c][0] <= current_index
          letter_hash[c].shift
        end
      end
      if min_char == ""
        index = letter_hash[char][0]
        if check(letter_hash, count_hash, char, index)
          min_char = char
          min_index = index
        end
      end

      if min_char > char
      index = letter_hash[char][0]
      if check(letter_hash, count_hash, char, index)
        min_char = char
        min_index = index
      end
    end
  end
  count_hash[min_char] -= 1
  current_index = min_index
  result += min_char
end

puts result
