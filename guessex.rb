puts "enter your name:"
name = gets.chomp
puts "welcome to the game: " +name
target_number = Random.rand(1..100)
puts target_number
player_guess = 0
max_guess = 2
min = 1
max = 100
while player_guess < max_guess
	puts "you have left with #{max_guess - player_guess} turns"
	remaining_guesses = max_guess - player_guess
	puts "chances left #{remaining_guesses}"
	puts "guess between #{min} - #{max}"
	guess = gets.to_i
	if guess > target_number
		puts "oops!!! your guess was high"
		max = guess
		
	elsif guess < target_number
        puts "oops!!! your guess was low"
        min = guess

	elsif guess == target_number
	    puts "Good job #{name}, you guessed my number: #{guess}"
	    break
	end
    player_guess = player_guess + 1
    end
if player_guess == max_guess

   puts "sorry you ran out of turns, my number is #{target_number}"
end