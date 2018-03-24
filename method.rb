=begin
types of variables

locan variable, block variable, global variable, instance variable, class variable



num=10 #local variable
names = ["sharan"] #local variable

names.each do |name| #block variable
	puts num
	puts names.capitalize
end

#puts name 
#(throws error as name is a block variable, it is not available outside the block ie do|| end)



def add
	n1=10
	n2=20
	return n1+n2
	"hello world"
end

#variables inside a method is not available outside the method (ie n1 and n2)
#puts n1
#puts n2

puts add



#a locan variable defined outsside the method is not available directly inside the method

n1 = 10
n2 = 20

def add
	return n1+n2
end
puts add



n1=10
n2=20

def add(num1,num2)   #num1 and num2 are known as parameters
    return num1+num2
end

puts add(n1,n2)  #n1 and n2 are known as arguments

=end




