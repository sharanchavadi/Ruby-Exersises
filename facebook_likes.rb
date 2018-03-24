likes = ["ramesh", "suresh", "mahesh", "veeresh", "jaggesh"]

if likes.empty?
	puts "no one likes this"
elsif likes.length ==1
	puts "#{likes[0]} likes this"
elsif likes.length ==2
	puts "#{likes.join("and")} likes this"
elsif likes.length ==3
	puts "#{likes.slice(0,2).join(", ")} and #{likes.last} likes this"
else
	puts "#{likes.slice(0,2).join(", ")} and #{likes.length - 2} others likes this"
end		
					