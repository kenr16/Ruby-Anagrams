# Anagram Friday Project

#### _Ken Rutan's Anagram Page, April 21st, 2017_

#### By _**Ken Rutan**_

## Overview

This website will allow a user to enter a string and check to se if that string is an anagram.

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
|Check to see if two words are anagrams of one another, provided only a-z lowercase input.|"hello".anagrams("hi")|"These words are not anagrams."|
|Check to see if two words are anagrams of one another, allowing for different capitalizations.|"Ruby".anagrams("Bury")|"These words are anagrams."|
|Check to see if two words are also palindromes.|"Hello".anagrams("olleh")|"These words are anagrams.  These words are also palindromes."|
|Check to ensure that both inputs are actual words by checking to see if they both contain vowels|"Rby".anagrams("Bury")|"The first word must contain a vowel."|
|If the words are not anagrams, check to see if they are in fact antigrams.|"Ruby".anagrams("Seeing")|"These words are antigrams."|
|Remove spaces before comparing anagrams, also check that each individual word in the input string contains a vowel|"Ruby".anagrams("Seeing h")|"All inputted must contain a vowel."|

## Installation

* In order to run this app:
  - Locate the git repository of this project.
  - Clone or download the git repository onto your desktop.
  - Locate home folder of the app "ie:/anagrams/"
  - Once you have navigated into this folder, run "ruby app.rb"
  - If should self open into a window in your default browser.

## Usage

Input a string and click the "Submit" button to see the results!

## Known Bugs
There are currently no known bugs in these HTML, CSS, Bootstrap, Ruby, Sinatra or Heroku files.

## Support and contact details

For further support, please contact Ken Rutan through his Github account. E-mail will not be listed here as this README is publicly displayed.

##Technologies Used

This website was constructed using HTML, CSS and Ruby as well as Sinatra and Heroku elements.

## License

Copyright (c) 2017 Ken Rutan.  This software is licensed under the MIT License.
