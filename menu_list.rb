menu = {"masale dose" => 43, "plain dose" => 34, "rava dose" => 20}

puts "menu items: #{menu.keys}"
puts "cost is #{menu["masale dose"]}"
puts "values: #{menu.values}"

#adding value to the hash
menu["coffee"] = 2

#updating value
menu["rava dose"] = 21

puts "MENU ITEMS"

menu.each do |key,value|
	puts "#{key}: INR #{value}"
end
