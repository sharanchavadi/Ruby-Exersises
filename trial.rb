puts "enter how many numbers you want in password"
number = gets.to_i

puts "enter how many speacial char you want in ur password"
speacial = gets.to_i

puts "enter how many leters you want in ur password"
letter = gets.to_i
# s = [ ]

	speacial_char = ["," ,"." , "#" , "/" , "}" , "{" , ":" , ";" , "(" , ")","!","+","*","&","%","@","<",">","~","`","$","^","-"]
	numbers = ["1","2","3","4","5","6","7","8","9","0"]
	char = ("a".."z").to_a

	s = speacial_char.sample(speacial) + numbers.sample(number) + char.sample(letter)

	puts s.to_a.shuffle.join("")
