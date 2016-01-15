test_cases = gets.to_i
test_cases.times do
  a = gets.strip.chomp.split('')
  b = gets.strip.chomp.split('')

  result = ''
  while a.size > 0 && b.size > 0
    if a[0] < b[0]
      result += a[0]
      a.shift
    else
      result += b[0]
      b.shift
    end
  end
  result += a.join('') + b.join('')
  puts result
end
