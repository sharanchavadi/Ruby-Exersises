puts "enter 10 numbers"
numbers = []
10.times do 
  numbers.push(gets.to_i)
end

def format(numbers)
	return "(#{numbers.slice(0,3).join()}) #{numbers.slice(3,3).join} - #{numbers.slice(6,4).join()}"
end

result = format(numbers)
puts result
