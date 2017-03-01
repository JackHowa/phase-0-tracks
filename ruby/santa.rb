class Santa

	attr_reader :age

	attr_accessor :gender, :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing new Santa instance..."
		@gender = gender  
		@ethnicity = ethnicity
		@reindeer_ranking = 
			["Rudolph", "Dasher", "Dancer", "Prancer", 
				"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

	def celebrate_birthday
		@age += 1
	end 

	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking << bad_reindeer
	end

end




Jack = Santa.new("male","German")

santas = []

genders = [["agender", "female", "bigender", "male", "female", 
"gender fluid", "N/A"].sample]
ethnicities = [["black", "Latino", "white", "Japanese-African", 
"prefer not to say"].sample]
genders.cycle(100) do 
  santas << Santa.new(genders, ethnicities)
end

p santas 
