=begin 
10 numbers are entered from the keyboard into an array. The number to be searched is entered through the keyboard by the user. 

Write a program to find if the number to be searched is present and if it is present display the number of times it appears in the array
=end

puts "Enter 10 numbers into an array: "
numbers=[]
i=1

while i<=10
		n = gets.to_i
		numbers.push(n)
  i+=1
end

puts "Numbers in an array are: #{numbers}"
puts "enter the number to search:"
search_key = gets.to_i

target_key = numbers.find_all {|number| number == search_key}
uniq_array=target_key.uniq

if search_key != uniq_array[0]
 puts "Wrong search key!, try again"
else 
	puts "Yes, the number is present and it appears #{target_key.length} times"
end