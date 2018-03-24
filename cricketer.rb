=begin
An object contains name of cricketer, his age, number of test matches that he has played and the average runs that he has scored in each test match. Create an array of objects to hold records of 10 such cricketers and then write a program to read these records and arrange them in ascending order by average runs. Use sort stand library method
=end
require 'faker'

class Cricketer
	attr_accessor :name, :age, :test_matches_played, :average_runs
    @@cricketers = []
	def initialize(data)
		@name = data["name"]
		@age = data["age"]
		@test_matches_played = data["test_matches_played"]
		@average_runs = data["average_runs"]
		@@cricketers.push(self)
	end

    def self.all
    	@@cricketers
    end

    def details
    	"Name:#{self.name}\tAge:#{self.age}\tTest_matches_played:#{self.test_matches_played}\tAverage_runs_scored:#{self.average_runs}"
    end

	def self.rearrange
	    @@cricketers.sort!{|a, b| a.average_runs <=> b.average_runs}
    end
end


10.times do
	data = {"name"=>Faker::Name.name, "age"=>Faker::Number.between(25, 45), "test_matches_played"=>Faker::Number.between(2, 20), "average_runs"=>Faker::Number.between(50, 200)}
    Cricketer.new(data)
end

puts "Records of cricketers:\n"
Cricketer.all.each do |cricket|
	puts cricket.details
end

puts "\nRecords in ascending order by average runs:\n"
Cricketer.rearrange
Cricketer.all.each do |cricket| 
	puts cricket.details
end

