# release 3

puts "How many employees will be processed today? Please enter a number in numerical form."

employee_count = gets.to_i

count = 0

until employee_count == count 
	# release 1 

	# question 1 name 
	puts "What's your name?"
	name = gets.chomp

	# latest update 

	# q2 
	# How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. 
	# If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
	# so testing whether 100+ && whether years line up?
	# output age (integer) 
	# output birth_year (integer)

	# question 2 age test 
	puts "How old are you?"
	age = gets.to_i 

	puts "Oh and what year were you born?"
	birth_year = gets.to_i

	# q3
	# output interest in garlic bread (boolean)
	puts "Our cafe has garlic bread. Do you ... like garlic bread? (y/n)"
	garlic_bread = gets.chomp

	# string to bool
	if garlic_bread == "y"
		likes_garlic = true 
	elsif garlic_bread == "n"
		likes_garlic = false 
	else 
		puts "I'm sorry, were you nervous. Do ... you ... like garlic bread? (y/n)"
		garlic_bread = gets.chomp
	end 

	# q4 
	# Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
	# question 4 healthcare program 

	puts "Last, would you like to join our healthcare program? (y/n)"
	healthcare_yn = gets.chomp

	if healthcare_yn == "y"
		wants_healthcare = true 
	elsif healthcare_yn == "n"
		wants_healthcare = false 
	else 
		puts "Sorry, still nervous? Would you like to join our healthcare program? (y/n)"
		healthcare_yn = gets.chomp
	end 



	# release 2 

	# human age verifier
	if ((age == Time.new.year - birth_year) || (age == Time.new.year - birth_year - 1)) && age < 120
		age_verify = true 	
	else
		age_verify = false 
	end 


	# diagnosis 

	if name == ("Drake Cula" || "Tu Fang") 
		puts "Definitely a vampire." 
	# checked 
	elsif !age_verify && !likes_garlic && !wants_healthcare
		puts "Almost certainly a vampire."
	# checked
	elsif age_verify && (likes_garlic || wants_healthcare)
		puts "Probably not a vampire."
	# checked 
	elsif !age_verify && !likes_garlic || !wants_healthcare
		puts "Probably a vampire."
	# yep works now 
	else 
		puts "Results inconclusive."
	# checks out 
	end

	# release 3 

	count += 1 

end 





