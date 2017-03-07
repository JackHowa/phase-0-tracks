# pseudo 
# 

# handle input and output as far as the user is concerned

# one user enters word 
# a second user guesses the word with letters 
# Guesses are limited, and the number of guesses available is related to the length of the word.

# repeated letters not penalized - just dumb 

# prompt one user to enter a word
	# store that word 
	# measure stored words's length 
		# double the word's length 
			# store that as the guess limit 

# UNTIL guess limit is equal to number of guesses 
	# prompt a second user to enter a letter 
		# compare that letter to the stored word 
			# IF letter is in word 
				# add that letter to the guessed letters list 
				# show encouraging message
				# Make the guessed current word include that letter
			# ELSIF letter is already in guessed letters list 
				# show all the letters in the word already guessed 
				# print out already-guessed letters 
				# subtract one guess from the count (same effect and easier than adding to rest)
			# ELSE 
				# show discouraging message 
				# add one guess to the guess list 
		# Add one guess to the guess count 
		# show all of the letters in the word that are present 

	# IF guessed word is equal to word solution
		# Show encouraging message
		# Change guess limit end to being true and stop the prompting 

# IF guessed word is not equal to word solution before number of guesses is equal to solution length 
	# show the solution
	# show discouraging message 


class WordGame

	attr_reader :solution, :guess_limit, :hangman_line, :guess_count, :letter, :loop 

	def initialize(solution)
    	@solution = solution.split("")
    	@guess_limit = @solution.length
    	@hangman_line = "_" * @guess_limit
    	@guess_count = 0
    	@letter = ""
    	@guessed_letters = []
    	@loop = true
 	end

 	def guess_game(letter)

 		@guess_count += 1

 		guess_letter(letter)

 		if @solution.include?(letter)

			fill_word(letter)

			puts "Yay - nice work. You guessed a letter or letters in the word."

		else 

			puts "Nope - try another letter."

		end 

		puts "You've guessed #{@guess_count} time(s)."
 	end 


	def fill_word(letter) 

		i = 0
		while i < @solution.length

			if @solution[i] == letter

				@hangman_line[i] = letter

			end
		i += 1
		end
		puts "Here's how far you are: #{@hangman_line}"
	end 



	def check_end

		if @guess_count < @guess_limit
			@loop = true  
			p "loop is true"
		else 
			@loop = false 
			puts "Sorry you lost"
			abort
		end 

	end 

	def guess_letter(letter)

	 	if @guessed_letters.include?(letter)

			puts "You've tried that one! Guess again :) "

			@guess_count -= 1

		else

			@guessed_letters << letter

		end

	end




end 

# prompt one user to enter a word
	# store that word 
	# measure stored words's length 
		# double the word's length 
			# store that as the guess limit 

# user solution-setter 

puts "What word do you want the other person to guess?"

solution = gets.chomp 

game = WordGame.new(solution)


 	# UNTIL guess limit is equal to number of guesses 
	# prompt a second user to enter a letter 
		# compare that letter to the stored word 
			# IF letter is in word 
				# add that letter to the guessed letters list 
				# show encouraging message
				# Make the guessed current word include that letter
			# ELSIF letter is already in guessed letters list 
				# show all the letters in the word already guessed 
				# print out already-guessed letters 
				# subtract one guess from the count (same effect and easier than adding to rest)
			# ELSE 
				# show discouraging message 
				# add one guess to the guess list 
		# Add one guess to the guess count 
		# show all of the letters in the word that are present 


# user solution-guesser 


 
puts ""
puts "Alright, hopefully you didn't see that word."

until @loop == false 

	puts "What letter do you want to guess?"

	letter = gets.chomp 

	game.guess_game(letter)
	game.check_end
end 




