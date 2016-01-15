def check_substring(string_1, string_2)
  string_1.each_char do |char|
    if string_2.index(char) != nil
      return true
    end
  end
  false
end

test_cases = gets.to_i
puts test_cases
test_cases.times do
  string_1 = gets.chomp.strip
  string_2 = gets.chomp.strip

  if check_substring(string_1, string_2)
    puts "YES"
  else
    puts "NO"
  end
end

