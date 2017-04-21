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

end
