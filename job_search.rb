require 'httparty'

url = "http://api.indeed.com/ads/apisearch?publisher=7277146494571922&co=in&v=2&format=json&limit=25"

puts "enter the technology"
tech = gets.chomp

puts "enter the location"
location = gets.chomp

response = HTTParty.get("#{url}&q=#{tech}&l=#{location}")

puts "*"*40
puts "\t\t Listing jobs - #{response["location"]} (#{response["totalResults"]})"
puts "*"*40


response["results"].each do |result|
	puts "#{result["jobtitle"]} - #{result["company"]}"
end
