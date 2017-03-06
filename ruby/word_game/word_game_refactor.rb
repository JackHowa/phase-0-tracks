class WordGame

	attr_reader :solution, :guess_limit, :hangman_line, :guess_count, :letter, :loop 

	def initialize(solution)
    	@solution = solution
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

end 

solution = "unicorn"

game = WordGame.new("unicorn")

game.print_variables

