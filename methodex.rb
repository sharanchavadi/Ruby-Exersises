#given two numbers and arithmetic operator as a string. retun return the result of the two numbers having that operator used on them.

def arithmetic(a,b,res)
  if res == "add"
     return a+b
 elsif res == "substract"
 	 return a-b
 elsif res == "multiply"
 	 return a*b
 elsif res == "divide"
 	 return a/b
 else
 	 return "invalid operator"
 end
end

puts arithmetic(3,2,"add")
puts arithmetic(3,2,"substract")
puts arithmetic(3,2,"multiply")
puts arithmetic(3,2,"divide")
puts arithmetic(3,2,"modulo")