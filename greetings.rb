=begin
Create a Person class with a greet method that returns the first and last name of the person with a greeting. For example if the first name is 'Bob' and the last name is 'Smith' then it should return 'Hello, Bob Smith!'.
=end


class Person
	attr_accessor :first_name, :last_name
	
	def greet
		return "Hello, #{first_name} #{last_name}"
	end
end

p1=Person.new
puts "enter the first name:"
p1.first_name = gets.chomp
puts "enter the last name:"
p1.last_name = gets.chomp
puts p1.greet

