# This method seems to be an overkill
# It creates a map every time when we need to generate a random score
# It would be great if we can avoid that
def random_score_generator(probability)
    score = []
    probability.map do |key, value|
      value.times { score << key }
    end
    return score.sample
end

probabilities = { 
  "Kirat Boli" => {"0"=>5, "1"=>30, "2"=>25, "3"=>10, "4"=>15, "5"=>1, "6"=>9, "-1"=>5},
  "NS Nodhi" => {"0"=>10, "1"=>40, "2"=>20, "3"=>5, "4"=>10, "5"=>1, "6"=>4, "-1"=>10},
  "R Rumrah" => {"0"=>20, "1"=>30, "2"=>15, "3"=>5, "4"=>5, "5"=>1, "6"=>4, "-1"=>20},
  "Shashi Henra" => {"0"=>30, "1"=>25, "2"=>5, "3"=>0, "4"=>5, "5"=>1, "6"=>4, "-1"=>30}
}

players = Hash[*probabilities.keys.collect { |player| [player, 0] }.flatten]

available_balls = 24
runs_to_win = 40
scored_runs = 0
required_runs = 0
wickets = 3
available_players = players.keys.reverse

on_field_players = { 0 => available_players.pop, 1 => available_players.pop }

current_player_index = 0

game_won = false

overs = 4

while overs>0
  #available_balls.times do
  balls = 6	
  required_runs = runs_to_win - scored_runs
  puts "\n#{overs} overs left. #{required_runs} runs to win\n\n"

  balls.times do
        
	    if scored_runs < runs_to_win && wickets > 0
	     #if runs_to_win > scored_runs
		       score_number = random_score_generator(probabilities[on_field_players[current_player_index]]).to_i
			   if score_number != -1
			       players[on_field_players[current_player_index]] += score_number
			       scored_runs += score_number
			       
			       #runs_to_win - score_number
			       puts "#{on_field_players[current_player_index]} scores #{score_number} runs"
			       #puts players
			       
		           current_player_index = ((current_player_index + 1) % 2) if [1, 3, 5].include?(score_number)
			       
			   else
			       puts "#{on_field_players[current_player_index]} is out"
			       wickets -= 1
			       if available_players.empty?
			          break
			       end
			       on_field_players[current_player_index] = available_players.pop
			   end
		else 
		    game_won = true
		    break
	    end
	    available_balls -= 1 	
  end

  overs -= 1
end

if game_won
   puts "Lengaburu won by #{wickets} wickets and #{available_balls} balls remaining\n\n"
else
   puts "Lengaburu lost by #{wickets} wickets and #{available_balls} balls remaining\n\n"
end

# Also, see if there are ways to remove nested ifs
# Too much branching is not good in a code

