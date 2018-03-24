puts "enter your name"
name = gets.chomp
puts "welcome to the game " +name
target_number = Random.rand(1..100) #target number 1, 2, 3,3...100
#83
puts target_number
player_guess = 0 #initialization
max_guess = 10
while player_guess < max_guess #condition
	puts "you have left with #{max_guess - player_guess}"
	puts "guess my number"
	guess = gets.to_i #10
	if guess > target_number
		puts "oops!!! your guess was high"
	elsif guess < target_number

	    puts "oops!!! your guess was low"

	elsif guess == target_number
	    puts "Good job #{name}, you guessed my number: #{guess}" #string 
	    break
	end
    player_guess = player_guess + 1 #player_guess +=1
    end
if player_guess == max_guess

   puts "sorry you ran out of turns, my number is #{target_number}"
end