
=begin
Write a program to find count of the most frequent item of an array. Assume that input is array of integers.
Ex.: input array: [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3].  ouptut: 5
=end


def frequent_number(input_array)

  input_hash = {}
  input_array.uniq.each do |val|
    input_hash[val] = input_array.count(val)
  end
  maximum = input_hash.values.max
  result = input_hash.key(maximum)
  return "the key #{result} occurs #{maximum} times"
end

input_array = [3,-1,2,-1,4,-1,2,-1,-1,5,4]

puts frequent_number(input_array)
