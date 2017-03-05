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

# IF guessed word is not equal to word solution before number of guesses is equal to double solution length 
	# show the solution
	# show discouraging message 

class WordGame

	attr_reader :guess_count

	def initialize(solution)
    	@solution = solution
    	@guess_count = 0
    	@end_game = false
    	@letter = "o"
 	end

  	def split_solution
  		@solution = @solution.split("")
  	end 

  	def measure_solution
  		@guess_limit = (@solution.length)*2
  	end 

  	def start_game 

 		p @guess_limit

 		p @end_game

 		if @guess_limit == @guess_count 
 			p "yep"
 		else 
 			p "nope"
 		end 

 		# until @guess_limit == @guess_count 

 		# 		if solution.include(@letter)?
			#   		p "yep"
			#   	else 
			#   		false 
			#   	end 
	  	
	end

end 

# user setter interface 
puts "Hello word-setter user. This is the word game."
puts "What word do you want the other user to guess?"

solution = gets.chomp 

game = WordGame.new(solution)


puts "Inputting word ... "

game.split_solution

game.measure_solution

game.start_game


# user guesser interface 

# puts "This is the Word Game!"










