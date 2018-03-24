=begin
Given an array : numbers = [10,12,21,30,-10,80,-9] Write a program to find out how many are positive, negative, even and odd.
=end

numbers = [10,12,21,30,-10,80,-9]
positive = 0
negative = 0
even_count = 0
odd_count = 0
numbers.each do |number|
 if number > 0
 	positive +=1
 else
 	negative +=1
 end
end

numbers.each do |num|
 if num.even?
 	 even_count +=1
 else
 	 odd_count +=1
 end
end

puts "Count of positive numbers: #{positive}"
puts "Count of negative numbers: #{negative}"
puts "Count of even numbers: #{even_count}"
puts "Count of odd numbers: #{odd_count}"