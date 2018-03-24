
puts "enter the number:"
num=gets.to_i #999
if num<10
	puts "The persistence is:0"
else
   while(1)
   numbers=num.to_s.split("") #["9", "9", "9"] 
   numbers.map!{|n|n.to_i} #[9, 9, 9]
   numbers = numbers.inject(:*) #729 i need result 2'
   num = numbers.to_s
   if num.length >1
      next
   else 
      puts num
	  break
   end
   end
end


=begin
p=1
numbers.each do |n|
  p*=n
end
puts p
=end
