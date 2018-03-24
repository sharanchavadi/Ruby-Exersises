=begin
Create a program where such booking numbers are generated randomly as soon as a
ticket is booked. They cannot be sequential. They can never be repeated. Program
should show

• Booking Reference of this ticket.
• The number of tickets already issued.
• The number of tickets that can be issued.
=end


require 'faker'

class AirlineTicket
    @@count = 0
	@@tickets = []
	attr_accessor :booking_number, :passenger_name, :depart_on, :number_of_passengers

    def initialize(data)
    	@booking_number = data["booking_number"]
		@passenger_name = data["passenger_name"]
		@depart_on = data["depart_on"]
		@@count +=1
		@@tickets.push(self)
	end

    def self.count
   	  @@count
    end

    def self.all
    	@@tickets
    end

    def details
    	"#{self.booking_number} - #{self.passenger_name} - #{self.depart_on}"
    end
end


puts "enter number of tickets to be booked:"
number = gets.to_i
i=1
number.times do
   puts "enter #{i}st person name:"
   name = gets.chomp
   data = {
   	       "booking_number"=>[*('A'..'Z')].sample(3).join+[*('A'..'Z'),*('0'..'9')].sample(3).join, 
           "passenger_name"=>name, 
           "depart_on"=>Faker::Date.between(Date.parse("2013-04-12"),Date.today)
          } 

   ticket = AirlineTicket.new(data)
   i +=1

end

puts "the number of tickets already booked are:"
AirlineTicket.all.each do |ticket|
	puts ticket.details
end

#if 
puts "the number of tickets that can be issued are:"

Im not keeping well so couldnt complete it. i'll add the remaining code to the comment section



