str = "virat virat sachin virat sachin"
split_str = str.split(" ")
player_hash = {}
words = []
puts split_str
split_str.each do |string|
    
	#player_hash[string] = 

	number = split_str.count(string)

	#player_hash[string] = "*" * number

	puts "#{player_hash[string]}" + "*" * number"
    
end

#puts "#{player_hash}"

