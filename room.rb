class Room
	attr_accessor :name, :price, :lacation
	attr_reader :id, :code

	#class variable
	@@count = 0
	@@rooms = []

	#initialize is a special method, it can only be called on class, this method is invoked by new method
	def initialize(data)
		@id = Random.rand(100)
		@name = data["name"]
		@price = data["price"]
		@location = data["location"]
		@code = "DCT#{@id}"
		@@count +=1
		@@rooms.push(self)
	end

    def Room.count #self.count #class methods
	    @@count
    end

    def Room.find_by_location(location)
	   return @@rooms.find_all{|room| room.location == location}
    end


    #instance methods can only be called on objects
    #returns an instance variables through an instance method
    def details #instance method
	   "#{self.name} - #{self.id} - #{slef.code}"
    end
end

data = {"name" => "Luxury"}
r1 = Room.new(data)

data = {"name" => "Delux", "price" => "1200"}
r2 = Room.new(data)

data = {"name" => "Delux", "price" => "1200", "location" => "Bengaluru"}
r3 = Room.new(data)


puts "Total rooms available #{Room.count}"
rooms = Room.find_by_location("coorg")
