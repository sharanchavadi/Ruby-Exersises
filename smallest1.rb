def smallest_string(str)

words = str.split(" ")

smallest_word = words[0]

result =[]

 words.each do |word|
   if word.length <smallest_word.length
       smallest_word = word
       
   end
 end
 
 result = words.find_all{|w|w.length == smallest_word.length}
 return result

end

#def smallest(str)
#	return str.split(' ').sort.first
#end

str = "now is the time for all good people"
puts smallest_string(str)
#puts smallest(str)


