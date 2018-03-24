n1=15
n2=17.8
n3=18.24567
num="1"
very_big_num=12345678

puts n1.class #Fixnum
puts n2.class #Float
puts n3.class #String
puts very_big_num.class #Bignum

puts n1.next #16 (Fixnum)
puts n2.round #18 #n2.round! will not work
puts n2 #17.8

puts n3.round #18
puts n3.ceil #19
puts n2.floor #17

puts n3.round(2) #18.25

#type conersion
puts n1.to_f #15.0
puts n2.to_i #17
puts n3.to_s #"18.24550"
puts n1.to_f.class #Float

 
 #write a program to ask the user to enter a number, dispaly even if its a even number and odd if its an odd number

puts "enter the nukmber"
n=gets.to_i
if n.even?
	puts "Even"
else
    puts "Odd"
end 
