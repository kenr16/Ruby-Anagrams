class Array
  define_method(:verify_word) do
    vowels = ["a", "e", "i", "o", "u"]
    output = false
    self.each do |letter|
      if vowels.include?(letter)
        output=true
      end
    end
    self.each_with_index do |letter, index|
      if self[index] == self[index + 1] && self[index] == self[index + 2]
        output = false
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
  define_method(:palindromes) do |word2|
  output = ""
    if self.downcase().reverse() == word2.downcase()
      output = "  These words are also palindromes."
    end
    output
  end
end

class Array
  define_method(:how_many_letters) do |word2|
    count = 0
    self.each do |letter|
      if word2.include?(letter)
        count += 1
        class Array
          define_method(:how_many_letters) do |word2|
            self
          end
        end
      end
    end
    count
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
            variable_output = "not anagrams" #'not anagrams' is eroneous here, as we are actually determining if they are antigrams.  If they are not antis, nor anagrams, no mention of antigrams will be made on the final display.
            count = first_letter_array.how_many_letters(second_letter_array)
            if count != 0
              variable_output.concat(" but they have #{count} letter(s) in common")
            end
          end
        end
      end
      palindrome_output = self.palindromes(word2)
      final_output = "These words are #{variable_output}.#{palindrome_output}"
    else
      final_output = "All inputted must contain a vowel."
    end
    final_output
  end
end
