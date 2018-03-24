winner_list = [
  {"season" => "1999-00", "team" => "Real Madrid", "country" => "Spain"},
  {"season" => "2000-01", "team" => "Bayern Munich", "country" => "Germany"},
  {"season" => "2001-02", "team" => "Real Madrid", "country" => "Spain"},
  {"season" => "2002-03", "team" => "Milan", "country" => "Italy"},
  {"season" => "2003-04", "team" => "Porto", "country" => "Portugal"}
]

puts "Enter country"
winning_country = gets.chomp
count = 0
winner_list.each do |winner|
  if winner.has_key?("country") && winner.has_value?(winning_country)
    count += 1
  end
end

puts count

