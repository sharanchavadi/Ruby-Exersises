#string class
first_name = 'sharan' #objects
last_name = "chavadi" #objects
middle_name = "SHa"
age = 10
mobile = "1234455"


puts 'today\'s weather is gonna be hot' 
puts "today's weather is hot"
puts "\"today's weather is hot\" they said"


puts last_name.class #class is a method to check which class the object belongs to
puts age.class
puts mobile.class


#string methods
puts first_name+" "+last_name #concatenation.  result is sharan chavadi

puts "#{first_name} #{last_name} #{age}" #string interpolation. result same as above


puts first_name.capitalize #Sharan
puts middle_name.downcase #sha
puts first_name.upcase #SHARAN
puts first_name #sharan


puts first_name.length
puts last_name.reverse


#arrays of characters
puts first_name[0] #s
puts last_name.upcase! #CHAVADI
puts last_name #CHAVADI last_name = last_name.upcase



tags = "ruby, programing, javascript, ajax, rails"
words = tags.split(", ") #split method always returns an array
puts words

i=0
while i<words.length
	puts "#{i+1}. #{words[i]}"
	i+=1
end	


#fake binary
#given number = "5372891"
#expected output = "1010110"

val= "5372891"
binary = val.split("")
output = ""
j=0
while j<binary.length
	if binary[j].to_i <5
		output += "0"
	else 
	    output +="1"
	end    
  j+=1
end	
puts output  






