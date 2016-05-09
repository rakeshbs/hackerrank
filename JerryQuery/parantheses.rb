def generate(n, string = "", open_parantheses = 0)
  if (n > 0)
      generate(n - 1, string + ")", open_parantheses - 1) if (open_parantheses > 0)
      generate(n - 1, string + "(", open_parantheses + 1) if (open_parantheses < n)
  else
    puts string
  end
end

n = gets.strip.chomp.to_i
generate(2 * n)
