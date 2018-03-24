=begin
Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

For example: str1 is 'rkqodlw' and str2 is 'world' the output should return true.
             str1 is 'katas' and str2 is 'steak' should return false.
=end

def scramble(str1,str2)

    str1_hash = {} 
    str2_hash = {}

    split_str1 = str1.split("")
    split_str2 = str2.split("")

    split_str1.each do |val|
    	str1_hash[val] = val

        split_str2.each do |key,value|
        	str2_hash[value] = value

            if str1_hash.key?(key)
    	    return "True"

            else
       	    return "False"
       	
            end
        end
    end

end


puts "enter str1:"
str1 = gets
puts "enter str2"
str2 = gets
puts scramble(str1,str2)
