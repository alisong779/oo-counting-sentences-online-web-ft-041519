require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    new_array.length 
  end
end

#1.splitting the string by punctuataion .?! (using regex) and adding to a new array using reject 
#2.then iterating through the array and removing any empty strings and assigning the result of the iteration to new array 
#3.returning the length of the new array 