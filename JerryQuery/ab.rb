def generate(n, string = "")
  if n > 0
    generate(n - 1, string + "a")
    generate(n - 1, string + "b")
  else
    puts string
  end
end

n = gets.strip.chomp.to_i
generate(n);
