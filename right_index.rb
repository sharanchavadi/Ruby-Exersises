=begin
Assignment 10: find the right index.
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:
Let's say you are given the array [1,2,3,4,3,2,1]:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ([1,2,3]) and the sum of the right side of the index ([3,2,1]) both equal 6.
assignment 10: find the right index
=end


numbers = [7,1,1,1,4,11]

index_n = 0
result_index = -1

numbers.each do |number|
  left_array = numbers.slice(0, index_n)
  right_array = numbers.slice(index_n + 1, numbers.length)

  if left_array.inject(:+) == right_array.inject(:+)
    result_index = index_n
    puts result_index
  end
  index_n += 1
end

if result_index == -1
  puts "-1"
end