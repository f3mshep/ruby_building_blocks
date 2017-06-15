# ruby_building_blocks
Building Blocks problems for The Odin Project

I completed 4 coding challenges for the Building Blocks lesson. 

Challenge 0: word_counter
I built a word counter that will count the number of words in a string. It outputs a histogram ordered by frequency of word use.
It served as an introduction to using hashes to collect data.

Challenge 1: caesar_cipher
A classic coding challenge that takes a string, and "shifts" all letters by a factor that is input by the user, while 
preserving punctuation, capital letters, and spaces.
I turned it into a basic command line app.

The most difficult part of this exercise was preserving capitals. I generated an array of letters in order, capitals first,
then downcase letters. I then used #index to encrypt the letters into numbers, added the desired shift, then used the same 
array/index system to translate the number into a letter. 

My solution is not pretty and does not follow the principles of DRY very well. One interesting way to improve my code would 
be to turn this solution into a class and use OOP to solve the problem.

Challenge 2: stock_picker
A problem wherein I had to design a method that will take an array as a parameter, which represents the selling price of a stock
on a given day. The program was to output index cooridinates that represent the best day to buy and sell the stock, respectively.

I solved this by creating a counter hash with the starting and ending days as the key, and the selling value as the value. I used
#slice to make sure the method would only sell on days after the stock was purchased (an important detail).

Challenge 3: substrings

Given a dictionary and string, find how many times the string is repeated in the dictionary. I used a hash to output the data.

When designing the method, I had to make a loop inside my first loop so that I could compare every word in the string with every
dictionary entry.
