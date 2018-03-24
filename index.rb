=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:
Let's say you are given the array [1,2,3,4,3,2,1]:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ([1,2,3]) and the sum of the right side of the index ([3,2,1]) both equal 6.


puts "enter the size"
size = gets.to_i
puts "enter integer values for an array"
numbers = [1,2,3,4,3,2,1]
size.each do
	values = gets.to_i
	numbers.push(values)
end

#sum_left = 0


numbers = [1,2,3,4,3,2,1]
i=0
j=0
sum_left=0
sum_right=0
rev=numbers.reverse
while i<numbers.size && j<rev.size
	numbers.slice(i,i+1)
	sum_left = sum_left+numbers[i]
	rev.slice(j,j+1)
	sum_right = sum_right+rev[j]
end
puts "#{sum_left} and #{sum_right}"
=end

numbers = [1,2,3,4,3,2,1]
i=0
result_index = -1
numbers.each do |num|
	left = numbers.slice(0,i)
	right = numbers.slice(i+1,numbers.length)

	if left == right
		result = i+1
	end
	i+=1
end
puts result_index

