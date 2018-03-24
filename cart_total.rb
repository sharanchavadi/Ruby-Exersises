def cart_total(*prices) # * denotes variable number of parameters. here prices is an array
	sum=0
	prices.each do |price|
		sum +=price
	end
	return sum
end

puts cart_total(20)
puts cart_total(20,40)
puts cart_total(50,40,30)
