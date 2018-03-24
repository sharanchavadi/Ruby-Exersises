puts "enter number"
string = gets.chomp
array = string.split(" ").map {|x| x.to_i }

count_hash = {
	"count_odd" => 0,
	"count_even" => 0
}
array.each do |x|
	if x%2 == 0
		count_hash["count_even"]+=1
	else
		count_hash["count_odd"]+=1
	end
end
puts count_hash

if count_hash["count_even"] > count_hash["count_odd"]
	array.each_with_index do |number, index|
		if number%2!=0
			puts index+1
			break
		end
	end
else
	array.each_with_index do |number, index|
		if number%2==0
			puts index+1
			break
		end
	end
end