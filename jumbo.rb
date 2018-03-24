=begin
Jumbo Juice makes a fresh juice out of fruits of your choice.Jumbo Juice charges $5 for regular fruits and $7 for special ones. Regular fruits are Banana, Orange, Apple, Lemon and Grapes. Special ones are Avocado, Strawberry and Mango. Others fruits that are not listed are also available upon request. Those extra special fruits cost $9 per each. There is no limit on how many fruits she/he picks.The price of a cup of juice is the mean of price of chosen fruits. In case of decimal number (ex. $5.99), output should be the nearest integer (use the standard rounding function of your language of choice).
=end

def juice(fruit_list)
	fruits = {"banana"=>"regular", "orange"=>"regular", "apple"=>"regular", "lemon"=>"regular", "grapes"=>"regular", "avocado"=>"special", "strawberry"=>"special", "mango"=>"special"}

    regular=0
    special=0
   
    rcount=[]
    scount=[]
    fruit_list.each do |fruit|
    	r=fruits.select {|key,val| key==fruit }
    	#s=fruits.select {|key,val| key==fruit && val=="special"}
    	#rcount.push(r)
     return r #scount.push(s)
    end
    	
    	
    
    	# fruits.each do |key,val|
    	#    if key == fruit
    	#    	 if val == "regular"
    	#    	 	regular +=1
    	#    	 else
    	#    	 	special +=1
    	#    	 end
    	#    end
    	# end
  #puts regular 
  #puts rcount
  #puts scount
  #total = (count.length)*5/fruit_list.length
    #total = (((regular*5).to_f+(special*7).to_f)/fruit_list.length)
    #return total
end



puts "enter number of fruits"
total_fruits = gets.to_i
fruit_list = []

puts "Enter the fruits"
total_fruits.times do
  fruit = gets.chomp
  fruit_list.push(fruit)
end

puts juice(fruit_list)
