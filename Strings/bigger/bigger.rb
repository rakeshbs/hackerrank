def get_next_letter_lexicographically(character, letters)
  min_letter = ""
  index = -1
  letters.each_with_index do |letter,i|
    if character < letter && (min_letter == "" || letter < min_letter)
      min_letter = letter
      index = i
    end
  end
  [min_letter,index]
end

tests = gets.to_i
tests.times do
  string = gets.chomp.strip
  lexicographic_string = ""

  letters_from_index = [string[-1]]

  (string.length - 2).downto(0) do |i|
    letters_from_index << string[i]

    lexicographic_string = string
    lexicographic_letter,delete_index = get_next_letter_lexicographically(string[i], letters_from_index)
    if lexicographic_letter == ""
      lexicographic_string = ""
      next
    end
    lexicographic_string[i] = lexicographic_letter

    letters_from_index.delete_at(delete_index)
    rest_of_string = letters_from_index.sort.join('')

    lexicographic_string[(i+1)..-1] = rest_of_string
    break
  end
  puts lexicographic_string == "" ? "no answer" : lexicographic_string
end

