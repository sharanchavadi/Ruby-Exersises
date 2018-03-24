
#numbers = Array.new #Array.new

names=["ramesh", "suresh", "veeresh", "ganesh"]
numbers= [10,20,20,5,9,2]
puts names.to_s

puts "Length of the array: #{numbers.length}"
puts "values at 2 index: #{numbers[2]}"
puts "value at first and last index: #{numbers.first} #{numbers.last}"

puts "max value: #{numbers.max}"
puts "min value: #{numbers.min}"
puts "sort ascending: #{numbers.sort}"
puts "sort descending: #{numbers.sort.reverse}"
puts "reverse Array: #{numbers.reverse}"

puts "given array: #{numbers}"

#mutable methods (changing the values in array)
puts "push values 10,20: #{numbers.push(10,20)}"
puts "pop (remove last value): #{numbers.pop}"
puts "add value to the beggining of the array: #{numbers.unshift(3)}"
puts "remove vaue from the beggining: #{numbers.shift}"
puts "insert vaue 7 at the index 2: #{numbers.insert(2,7)}"


number = [2,4,7,2,8,10]
puts "given array: #{number}"
puts "delete method looks for the value #{number.delete(7)}" #passing value as argument
puts "delete_at removes value from index: #{numbers.delete_at(1)}" #passing index as argument

puts "unique values of array: #{ ["virat", "virat", "sachin", "dhoni"].uniq }"


#very important methods

c style of working with arrays
sum=0
i=0
while i<prices.length
	prices.lenth; i++
	sum+=prices[i]
	i+=1
end

puts "total: #{sum}"

cart_total =0


#ruby style of working with arrays

names = ["suresh", "veeresh", "mahesh", "ramesh"]
#.each iterator
prices.each do |name|
	puts name.capitalize
end



#for in iterator

for name in names
	puts name.upcase
end
