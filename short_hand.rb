#condition ? true statements : false statements

likes =["sharan"]

puts likes.empty? ? "no one likes this" : "#{likes} likes this"

n1=10
n2=20
n3=30
puts (n1>n2) ? "n1 is graeter" : "n2 is graeter"


#find the largest of 3 numbers using ternary operator
#n1 = 10, n2=20, n3=30

n1>n2 ? "n1 is greater" : "n2 is greater"

(n1>n2 && n1>n3) ? " n1 is greater" : (n2>n3) ? "n2 is greater" : "n3 is greater"