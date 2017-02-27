class Santa

	def initialize(gender,ethnicity)
		puts "Initializing new Santa instance..."
		@gender = gender  
		@ethnicity = ethnicity
		@reindeer_ranking = 
			["Rudolph", "Dasher", "Dancer", "Prancer", 
				"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

	def speak
    	puts "Ho, ho, ho! Haaaappy holidays! I'm #{@gender} and #{@ethnicity}."
  	end

 	def eat_milk_and_cookies(cookie_type)
  		puts "That was a good #{cookie_type}" 
	end 

end



# Jack.speak

# Jack.eat_milk_and_cookies("chocolate chip cookie")




# release 2 


Jack = Santa.new("male","German")

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "definitely don't want to say", "Hell noo"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Programmer", "Human"]
genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
