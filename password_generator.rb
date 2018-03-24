puts "\nLet's generate a secure password:\n"
puts "How many numbers do you need in password?"
num_size = gets.to_i

puts "How many speacial characters do you need in password?"
char_size = gets.to_i

puts "How many alphabets do you need in password?"
alpha_size = gets.to_i

speacial_chars = ["," ,"." , "#" , "/" , "}" , "{" , ":" , ";" , "(" , ")","!","+","*","&","%","@","<",">","~","`","$","^","-"]
numbers = ["1","2","3","4","5","6","7","8","9","0"]
char = ("a".."z").to_a
if (num_size<2 || char_size<2 || alpha_size<2)
	puts "Warning-password should contain atleast 2 numbers, 2 alphabets and speacial characters"
else 

     password = speacial_chars.sample(char_size) + numbers.sample(num_size) + char.sample(alpha_size)
     puts password.to_a.shuffle.join("")
end
