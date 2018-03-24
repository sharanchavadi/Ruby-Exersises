#write a program that accepts 10 integers between 0 to 9, that returns a string of those numbers in the form of a phone number.
# return as (123) 456-7890

puts "enter 10 numbers"
numbers = []
10.times do 
  numbers.push(gets.to_i)
end
puts "(#{numbers.slice(0,3).join()}) #{numbers.slice(3,3).join} - #{numbers.slice(6,4).join()}"
