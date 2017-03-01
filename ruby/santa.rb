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

	def rando_age(age)
		age = rand(0..140)
		p age
	end 

end

santas = []

genders = [["agender", "female", "bigender", "male", "female", 
"gender fluid", "N/A"].sample]
ethnicities = [["black", "Latino", "white", "Japanese-African", 
"prefer not to say"].sample]

genders.cycle(100) do 
  santas << Santa.new(genders, ethnicities)
end

santas.rando_age(@age)
