class Movie
	#instance variable ex: @name,@langg

	#attributes/properties
	#methods/behaviours

	
	#writes
	def name=(user_input_name)
		@name = user_input_name
	end

	def language=(user_input_language)
		@language = user_input_language
	end

	def release_date=(user_input_release_date)
		@release_date = user_input_release_date
	end


	
	#readers
	def name
		@name
	end

	def language
		@language
	end

	def release_date
		@release_date
	end

end


movie1 = Movie.new
movie2 = Movie.new

movie1.name = "kirik party"
puts movie1.name

movie1.language = "kannada"
puts movie1.language


puts "movie name: #{movie1.name} - language: #{movie1.language}"

puts "enter movie name"
movie1.name = gets.chomp
