#dynamic hash generation
str= "virat virat virat virat sachin virat sachin dhoni kumble kumble"

players = str.split(" ")
players_hash = {} #Hash.new

players.uniq.each do |player| #association proxy
	players_hash[player] = players.count(player)
end



=begin 
"*" * 4 = ****
virat :****
sachin :**
dhoni: *
=end

puts players_hash

players_hash.each do |key, val|
	puts "#{key}: #{"*" * val}"

end