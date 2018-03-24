=begin
Find how many times did a team from a given country win the Champions League?
=end

winnerlist1 = [{"season" => "1999-00", "team" => "Real madrid", "country" => "Spain"},
	           { "season" => "2000-01", "team" => "Bayern munich", "country" => "Germany"},
	           { "season" => "2001-02", "team" => "Real madrid", "country" => "Spain"},
	           { "season" => "2002-03", "team" => "Milan", "country" => "Italy"},
	           { "season" => "2003-04", "team" => "Porto", "country" => "Portugal"}]
puts winnerlist1[0]

#countWins(winnerList1, 'Spain') => should return 2
#countWins(winnerList1, 'Portugal') => should return 1
#countWins(winnerList1, 'Sportland') => should return 0

spaincount = 0
germanycount = 0
italycount = 0
portugalcount = 0

resulat_hash = {}


winnerlist1.each do |val|
	if countwins(winnerlist1, "Spain") == key
		spaincount +=1
	elsif key == "Germany"
		germanycount +=1
	elsif key == "Italy"
		italycount +=1
	elsif key == "Portugal"
		portugalcount +=1
	#else 
	#	puts "nill"
    end
end

puts "Spain: #{spaincount}\nGermany: #{germanycount}\nItaly: #{italycount}\nPortugal: #{portugalcount}"
