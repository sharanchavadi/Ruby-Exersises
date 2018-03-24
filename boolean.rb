#boolean methods

numbers = []
if numbers.empty? #tru/false
	puts "array is empty"
else
	puts numbers.to_s
end


prices = [10,20,30,40,50]
puts "enter the number search"
n=gets.to_i
if prices.include? n
	puts "#{n} is found in array"
else
	puts "#{n} is not in array"
end

cart = {"marker" => 15, "scale" =>9}

if cart.has_key? "pencil"
	puts "pencil is in cart"
else
	puts "pencil is not found"

numbers = [10,4,10,20,30,40,50]
value = numbers.find {|n| n<5} #either element/nil
if value.nil?
	puts "no match found"
else
	puts value

end

result = numbers.find_all{|n| n<3}
if result.empty?
	puts "no match"
else
	puts result.to_s
end

#zero?, even?, odd?