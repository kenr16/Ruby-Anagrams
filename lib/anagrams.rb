class Array
  define_method(:verify_word) do
    vowels = ["a", "e", "i", "o", "u"]
    output = false
    self.each do |letter|
      if vowels.include?(letter)
        output=true
      end
    end
    output
  end
end


class String
  define_method(:anagrams) do |word2|
    first_word_array = self.downcase().split("")
    second_word_array = word2.downcase().split("")
    first_word_array.delete(" ")
    second_word_array.delete("")
    variable_output = "not anagrams"
    palindrome_output = ""
    if first_word_array.verify_word() == true && second_word_array.verify_word() == true
      if first_word_array.sort() == second_word_array.sort()
        variable_output = "anagrams"
      else
        variable_output = "antigrams"
        first_word_array.each do |letter|
          if second_word_array.include?(letter) == true
            variable_output = "not anagrams"
          end
        end
      end
      if self.downcase().reverse() == word2.downcase()
        palindrome_output = "  These words are also palindromes."
      end
      final_output = "These words are #{variable_output}.#{palindrome_output}"
    elsif first_word_array.verify_word() == false
      final_output = "The first word must contain a vowel."
    elsif second_word_array.verify_word() == false
      final_output = "The second word must contain a vowel."
    end
    final_output
  end
end
