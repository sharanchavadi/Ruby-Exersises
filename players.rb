player = "virat virat virat sachin virat sachin dhoni sachin"

v = player.scan(/virat/).length
puts "virat: #{v}"
s = player.scan(/sachin/).length
puts "sachin: #{s}"
d = player.scan(/dhoni/).length
puts "dhoni: #{d}"




cricketers = "virat virat virat sachin virat sachin dhoni sachin"
player_names= cricketers.split(" ")
vir_count = 0
sach_count = 0
dho_count = 0
count = 0
while count<player_names.length
	if player_names[count] == "virat"
		vir_count+=1
    elsif player_names[count] == "sachin"
    	sach_count+=1
    else
    	dho_count+=1
    end
 count+=1
end
puts "\nVirat: #{vir_count}\nSachin: #{sach_count}\nDhoni: #{dho_count}\n"
 