@n, @m = gets.strip.chomp.split(' ').map(&:to_i)
@coins = gets.strip.chomp.split(' ').map(&:to_i)

@cache = {}
def count(n, m)
  return 1 if n == 0
  return 0 if n < 0
  return 0 if m <= 0 && n > 0
  return @cache[[n,m]] unless @cache[[n,m]].nil?

  @cache[[n,m]] = count(n - @coins[m - 1], m) + count(n, m - 1)
end

puts count(@n, @m)
