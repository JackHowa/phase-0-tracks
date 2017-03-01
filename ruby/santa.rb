class Santa

	attr_reader :age, ethnicity

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

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	puts "Age: #{@age}" 
	# end

	# def ethnicity 
	# 	puts "Ethnicity: #{@ethnicity}"
	# end 


	# def speak
 #    	puts "Ho, ho, ho! Haaaappy holidays! I'm #{@gender} and #{@ethnicity}."
 #  	end

 # 	def eat_milk_and_cookies(cookie_type)
 #  		puts "That was a good #{cookie_type}" 
	# end 

end

brad = Santa.new("male","Italian")

brad.celebrate_birthday

brad.get_mad_at("Vixen")

brad.change_gender("female")

brad.age

brad.ethnicity




# release 2 


# Jack = Santa.new("male","German")

# Jack.speak

# Jack.eat_milk_and_cookies("chocolate chip cookie")

# santas = []
# genders = ["agender", "female", "bigender", "male", "female", 
# "gender fluid", "N/A", "definitely don't want to say", "Hell noo"]
# ethnicities = ["black", "Latino", "white", "Japanese-African", 
# "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Programmer", "Human"]
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

# p santas 
