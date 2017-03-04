class Santa

	attr_accessor :gender, :ethnicity, :age 

	def initialize(gender,ethnicity)
		# puts "Initializing new Santa instance..."
		@gender = gender  
		@ethnicity = ethnicity
		@age = rand(140)
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

 # Jack = Santa.new("male","German")		
	
 # Jack.speak		
 	
 # Jack.eat_milk_and_cookies("chocolate chip cookie")


# release 4 

santas = []

genders = ["agender", "female", "bigender", "male", "female", 
"gender fluid", "N/A"]

ethnicities = ["black", "Latino", "white", "Japanese-African", 
"prefer not to say"]


100.times do 
	santas << Santa.new(genders[rand(genders.length)], ethnicities[rand(ethnicities.length)])
end

p santas 

	
 		
 		
