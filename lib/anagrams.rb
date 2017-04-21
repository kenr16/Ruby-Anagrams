class String
  define_method(:anagrams) do |word2|
    first_word_array = self.split("")
    second_word_array = word2.split("")
    variable_output = "not "
    if first_word_array.sort() == second_word_array.sort()
      variable_output = ""
    end
    "These words are #{variable_output}anagrams."
  end
end
