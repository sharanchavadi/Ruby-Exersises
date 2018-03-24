def hash_tag_gen(str)

hashtag = str.split(" ")
result = ""
hashtag.each do |n| n.capitalize!
   result += n
end
   puts "##{result}"
end

puts "enter the string"
sentence = gets
puts hash_tag_gen(sentence)