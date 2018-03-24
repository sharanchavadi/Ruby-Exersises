
array_values = [["white", "goodness"], ["blue", "tranquility"]]

hash_value = {}

array_values.each do |array_value|
  hash_value[array_value[0]] = array_value[1]
end

puts "#{hash_value}"
