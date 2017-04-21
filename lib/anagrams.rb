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
    variable_output = "not "
    palindrome_output = ""
    if first_word_array.verify_word() == true && second_word_array.verify_word() == true
      if first_word_array.sort() == second_word_array.sort()
        variable_output = ""
      end
      if self.downcase().reverse() == word2.downcase()
        palindrome_output = "  These words are also palindromes."
      end
      final_output = "These words are #{variable_output}anagrams.#{palindrome_output}"
    elsif first_word_array.verify_word() == false
      final_output = "The first word must contain a vowel."
    elsif second_word_array.verify_word() == false
      final_output = "The second word must contain a vowel."
    end
    final_output
  end
end
