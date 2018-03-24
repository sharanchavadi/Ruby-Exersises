#find the sum of the array

prices = [10,20,30,[40,50],60]
result = 0
prices.each do |price| 
	if price.class == Fixnum
      result +=price
    elsif price.class == Array
       price.each do |p|
 	     result +=p
       end
    end
end
puts result
