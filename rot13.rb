
def rot13(sentance)
 alphabet = ("a".."z").to_a
 letters = sentance.split("") #["t","e","s","t"]
 #new_sentance = []
 new_sentance = ""

 letters.each do |letter|
 	if letter !=" " #if there is no space then find the index
 		index_of = alphabet.index(letter.downcase)
 		char_index = index_of +13 - 26
 		#new_sentance.push(alphabet[char_index])
 		new_letter = alphabet[char_index]
 		new_sentance +=(letter == letter.upcase)? new_letter.upcase : new_letter
 	else #if there is a space in the sentance then add a empty space
 		new_sentance +=" "

    end
  end
#return new_sentance.join("")
return new_sentance
end


puts "enter the sentence to conevert to rot13"
sentance = gets.chomp #"test"

result = rot13(sentance) #"test"
puts result
	
