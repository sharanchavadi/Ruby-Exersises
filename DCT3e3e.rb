=begin 
Given an array [100,200,123,450,875,1]  find the
 1.minimum
 2.maximum
 3.sum
 4.average
=end

numbers = [100,200,123,450,875,1]
sum = 0
average = 0.0

puts "Minimum is: #{numbers.min}"
puts "Maximum is: #{numbers.max}"

numbers.each do |number|
	sum += number
	average = sum.to_f/numbers.length.to_f
end

puts "Sum: #{sum}"
puts "Average: #{average}"

