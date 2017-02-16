




# release 1 

# q1
# What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
# output name (string)

# q2 
# How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
# so testing whether 100+ && whether years line up?
# output age (integer) 
# output birth_year (integer)

# q3
# Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
# output interest in garlic bread (boolean)

# q4 
# Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
# 

# question 1 name 
puts "What's your name?"
name = gets.chomp


# question 2 age test 
puts "How old are you?"
age = gets.to_i 

puts "Oh and what year were you born?"
birth_year = gets.to_i

# question 3 garlic interest
puts "Our cafe has garlic bread. Do you ... like garlic bread? (y/n)"
garlic_bread = gets.chomp

# string to bool
if garlic_bread == "y"
	like_garlic = true 
elsif garlic_bread == "n"
	like_garlic = true 
else 
	puts "I'm sorry, were you nervous. Do ... you ... like garlic bread? (y/n)"
	garlic_bread = gets.chomp
end 

# question 4 healthcare program 

puts "Last, would you like to join our healthcare program? (y/n)"
healthcare_yn = gets.chomp

if healthcare_yn == "y"
	healthcare = true 
elsif healthcare_yn == "n"
	healthcare = false 
else 
	puts "Sorry, still nervous? Would you like to join our healthcare program? (y/n)"
	healthcare_yn = gets.chomp
end 

puts "#{name} is name"
puts "#{age} is how old"
puts "#{birth_year} is birth year"
puts "#{like_garlic} to garlic"
puts "#{healthcare} to healhcare"


















=begin 


# ok now've got some thing to make new judgment off of 

if age_verify = true && (garlic_bread = true || healthcare = true) 
	puts "Probably not a vampire."
end 


# check whether age correct 
if (Time.new.year - birth_year) == age 
	age_verify = true 
else
	age_verify = false 
end 
#new variable is age_verify 


if vampire_name = (“Drake Cula” || “Tu Fang”) do 
	then puts "Definitely a vampire."
end 

# puts "I, #{name}, am #{age} year old; I was born in #{birth_year}."


# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”

# def vamp_check 

=end 

