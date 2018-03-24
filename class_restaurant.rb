
require 'pry'
class Restaurant
	attr_reader :id, :name #sets up all the reader methods
	attr_writer :id, :name #creates internally all the writers
	#attr_accessor :id, name

	def details 
		"#{self.id} - #{self.name.capitalize}"
	end
end


r1 = Restaurant.new
r1.id = 1
r1.name = "1947"
#puts r1.details


r2 = Restaurant.new
r2.id = 2
r2.name = "Adigas"
#puts r2.details


class User
	attr_accessor :id, :name #sets up both readers and writers
end

user1 = User.new
user1.id = 1
user1.name = "Sharan"


class Reviews
	attr_accessor :id, :title, :user_id, :restaurant_id

def details
	"id:#{self.id} -name:#{self.title} -user_id#{user_id} -restaurant_id#{restaurant_id}"
end

end


review1 = Reviews.new
review1.id = 1
review1.title = "Awesome food"
review1.restaurant_id = r1.id
review1.user_id = user1.id
#puts review1.details


restaurants = []
users = []
reviews = []
binding.pry

restaurants.push(r1,r2)
users.push(user1)
reviews.push(review1)
binding.pry


puts "*"*50
puts "\t\t Listing restaurants"
puts "*"*50


restaurants.each_with_index do |restaurant,index|
puts "#{index+1}.#{restaurant.name}"
binding.pry

#finding all reviews of this restaurant
restaurant_reviews = reviews.find_all{|review| review.restaurant_id == restaurant.id}
binding.pry

puts "********" + "Listing reviews for #{restaurant.name} (#{restaurant_reviews.length})" + "**********"

restaurant_reviews.each do |review|
	binding.pry

	#finding the user who reviewed
	user = users.find{|user| user.id == review.user_id}
	puts "#{user.name} reviewed it as #{review.title}"
end
end