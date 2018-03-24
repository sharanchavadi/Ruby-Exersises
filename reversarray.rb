#DCTe7cf- convert number to reversed array of digits. you have to return the digits of this number within an array in reverse order
# ex: 348597

numbers = "348597"
number_array = numbers.split("")
number_array = number_array.reverse
#puts number_array
result = []
number_array.each do |n| 
     result.push(n.to_i)
end
puts "the reversed array is: #{result}"

