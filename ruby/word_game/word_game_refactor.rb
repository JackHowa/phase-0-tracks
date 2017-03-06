class WordGame

	attr_reader :solution, :guess_limit, :hangman_line, :guess_count, :letter, :loop 

	def initialize(solution)
    	@solution = solution.split("")
    	@guess_limit = @solution.length
    	@hangman_line = "_" * @guess_limit
    	@guess_count = 0
    	@letter = []
    	@guessed_letters = []
    	@loop = true
 	end

 	def print_variables
 		p @solution
 		p @guess_limit
 		p @hangman_line
 		p @guess_count
 	end 

 	def start_game(letter)

 		p @guess_count

 		@guess_count =+ 1

 		p @guess_count

 		p @letter

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

game.print_variables


# user solution-guesser 

puts ""
puts "Alright, hopefully you didn't see that word."
puts "What letter do you want to guess?"

letter = gets.chomp 

game.start_game(letter)



