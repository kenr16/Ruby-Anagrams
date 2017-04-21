require('rspec')
require('anagrams')
require('pry')

describe("String#anagrams") do
  it("Checks to see if the words are anagrams of one another.  a-z lowercase only.") do
  expect("hello".anagrams("hi")).to(eq("These words are not anagrams."))
  end

  it("Checks to see if the words are anagrams of one another.  a-z lowercase only.") do
  expect("ruby".anagrams("bury")).to(eq("These words are anagrams."))
  end


  it("Checks to see if the words are anagrams of one another regardless of case.") do
  expect("Hello".anagrams("Hi")).to(eq("These words are not anagrams."))
  end

  it("Checks to see if the words are anagrams of one another regardless of case.") do
  expect("Ruby".anagrams("Bury")).to(eq("These words are anagrams."))
  end

  it("Checks to see if the words are palindromes as well as anagrams regardless of case.") do
  expect("Hello".anagrams("Olleh")).to(eq("These words are anagrams.  These words are also palindromes."))
  end

  it("Checks to see if the words are palindromes as well as anagrams regardless of case.") do
  expect("Ruby".anagrams("Hellu")).to(eq("These words are not anagrams."))
  end

  it("Checks to see if the inputted words are actual words which contain a vowel.") do
  expect("Rby".anagrams("Bury")).to(eq("All inputted must contain a vowel."))
  end

  it("Checks to see if the inputted words are actual words which contain a vowel.") do
  expect("Ruby".anagrams("Bry")).to(eq("All inputted must contain a vowel."))
  end

  it("If the words are not anagrams, checks to see if the words are antigrams.") do
  expect("Ruby".anagrams("Suing")).to(eq("These words are not anagrams."))
  end

  it("If the words are not anagrams, checks to see if the words are antigrams.") do
  expect("Ruby".anagrams("Seeing")).to(eq("These words are antigrams."))
  end

  it("Remove spaces before running the anagram check, also ensure that each individual word in the input contains a vowel.") do
  expect("Ruby".anagrams("Seeing h")).to(eq("All inputted must contain a vowel."))
  end
end
