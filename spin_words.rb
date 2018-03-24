=begin
Write a method that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
=end

def spinwords(str)
  hash_str = {}
  hash_spin = {}
  split_sentance = str.split(" ")
  split_sentance.each do |word|
    hash_str[word] = word.split("").count
    hash_str.each do |key,value|
       if value >= 5
    	  hash_spin[key] = key.reverse
       else
       	  hash_spin[key] = key
       	
       end
    end
   
  end
  result = hash_spin.values.join(" ")
  return result
end


puts "enter the string:"
str = gets
puts spinwords(str)