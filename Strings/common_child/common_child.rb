@str1 = gets.strip.chomp
@str2 = gets.strip.chomp

def longest(len1, len2)
  memo = [[0] * 5001] * 5001
  len1.downto(0) do |i|
    len2.downto(0) do |j|
      if @str1[i] == @str2[j]
        memo[i][j] = 1 + memo[i + 1][ j + 1]
      else
        memo[i][j] = [memo[i + 1][j], memo[i][j + 1]].max
      end
    end
  end
  return memo[0][0]
end

puts longest(@str1.length - 1, @str2.length - 1)
