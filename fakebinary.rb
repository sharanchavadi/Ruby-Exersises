val= "5372891"
binary = val.split("")
output = ""
j=0
while j<binary.length
	if binary[j].to_i <5
		output += "0"
	else 
	    output +="1"
	end    
  j+=1
end	
puts output 