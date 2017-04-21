class String
  define_method(:anagrams) do |word2|
    first_word_array = self.downcase().split("")
    second_word_array = word2.downcase().split("")
    variable_output = "not "
    palindrome_output = ""

    if first_word_array.sort() == second_word_array.sort()
      variable_output = ""
    end
    if self.downcase().reverse() == word2.downcase()
      palindrome_output = "  These words are also palindromes."
    end
    "These words are #{variable_output}anagrams.#{palindrome_output}"
  end
end
