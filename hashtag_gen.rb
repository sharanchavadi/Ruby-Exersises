=begin
The marketing team are spending way too much time typing in hashtags. Let's help them with our own Hashtag Generator!
Here's the deal: 

It must start with a hashtag (#).
All words must have their first letter capitalized.
Example Input to Output: "Ruby Programming" => "#RubyProgramming"

"We are on a roll at Dct Academy" => "#WeAreOnARollAtDctAcademy"
=end


puts "enter the string"
str = gets
hashtag = str.split(" ")
result = ""
hashtag.each do |n| n.capitalize!
	result += n
end
puts "##{result}"

