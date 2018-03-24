#gender API

=begin
require 'JSON'

response = '{"name":"sharan","gender":"male","samples":926,"accuracy":85,"duration":"24ms"}'

puts JSON.parse(response)
puts JSON.parse(response).class
=end

require 'httparty'
puts "enter the first name"

first_name = gets.chomp

url = "https://gender-api.com/get?name="
api_key = "pRPLCejozFwCHFbVCR"
response = HTTParty.get("https://gender-api.com/get?name=#{first_name}&key=#{api_key}")

puts response.class
puts response

puts "the gender of #{first_name} is #{response["gender"]}"

