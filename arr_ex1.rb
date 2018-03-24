#write a program to find all the values less than 25
prices = [10,20,30,40,50,15,18]
result = []
prices.each do |price|
	if price<25
	result.push(price)	
    end
end
puts "the result: #{result}"



#Try this one with find_all

output = prices.find_all {|price| price <25}
puts "the result: #{output}"

players = ["virat", "virat", "virat", "sachin", "sachin"]
virat = players.find_all {|player| player == "virat"}
puts "#{virat}"


#find odd numbers
numbers = [10,20,8,9,25,26]
odd_numbers = numbers.find_all {|num| number.odd?}
puts "#{odd_numbers}"