class Santa

	attr_accessor :gender, :ethnicity, :age 

	def initialize(gender,ethnicity)
		# puts "Initializing new Santa instance..."
		@gender = gender  
		@ethnicity = ethnicity
		@age = rand(140)
	end

end

santas = []

genders = ["agender", "female", "bigender", "male", "female", 
"gender fluid", "N/A"]

ethnicities = ["black", "Latino", "white", "Japanese-African", 
"prefer not to say"]


100.times do 
	santas << Santa.new(genders[rand(genders.length)], ethnicities[rand(ethnicities.length)])
end

p santas 