string1 = gets.chomp.strip.split('')
string2 = gets.chomp.strip.split('')

string1_hash = Hash.new {|h,k| h[k] = 0}
string2_hash = Hash.new {|h,k| h[k] = 0}

string1.each do |str|
  string1_hash[str] += 1
end

string2.each do |str|
  string2_hash[str] += 1
end

puts ((string1 - string2).length + (string2 - string1).length)


