#DCTofee- some without highest and lowest number

number = [6,2,1,8,10]
number = number.sort
number.shift
number.pop
sum=0
number.each do |n|
	sum += n
end
puts sum

# we can also try the below

puts number.inject(:+)
