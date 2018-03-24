numbers = [10,20,30,100,55]

puts numbers.find_all{|n| n.even}.inject(:+)

name = "evil"

#associate proxy/daisy chaining
#the ability to chain methods in ruby is known as association proxy

puts name.reverse.capitalize #"Live"