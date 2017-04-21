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
  define_method(:verify_words) do |word2|
    output = false
    first_array_of_words = self.downcase().split(" ")
    second_array_of_words = word2.downcase().split(" ")
    output = true
    first_array_of_words.each do |word|
      if word.split("").verify_word() == false
        output = false
      end
    end
    second_array_of_words.each do |word|
      if word.split("").verify_word() == false
        output = false
      end
    end
    output
  end
end


class String
  define_method(:anagrams) do |word2|
    first_letter_array = self.downcase().split("")
    second_letter_array = word2.downcase().split("")
    first_letter_array.delete(" ")
    second_letter_array.delete(" ")
    variable_output = "not anagrams"
    palindrome_output = ""
    if self.verify_words(word2) == true
      if first_letter_array.sort() == second_letter_array.sort()
        variable_output = "anagrams"
      else
        variable_output = "antigrams"
        first_letter_array.each do |letter|
          if second_letter_array.include?(letter) == true
            variable_output = "not anagrams"
          end
        end
      end
      if self.downcase().reverse() == word2.downcase()
        palindrome_output = "  These words are also palindromes."
      end
      final_output = "These words are #{variable_output}.#{palindrome_output}"
    else
      final_output = "All inputted must contain a vowel."
    end
    final_output
  end
end
