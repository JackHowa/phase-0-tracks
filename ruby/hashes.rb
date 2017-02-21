=begin - prompt user to enter data on interior application, including
		the client's name, age, number of children, decor theme, 
		and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).


=end 

puts "What's your name"
user_name = gets.to_sym!

puts "How old are you?"
age = gets.to_i

puts "How many children do you have?"
children = gets.to_i

puts "What decor theme do you like?"
decor_theme = gets.chomp 

puts "Have you ever done interior design? (y/n)"
experience = gets.chomp 

#convert the string to a boolean
if experience == "y"
	experience = true 
else experience == "n"
	experience = false
end

#convert the key strings to symbols 
user_info = {
	user_name: user_name, 
	age: age, 
	children: children,
	decor_theme: decor_theme,
	experience: experience
}

# print key symbols and corresponding data 
puts user_info


# update a key 
puts "Would you like to change your info, like for decor theme, or none?"
update_key = gets.chomp 

if update_key == "decor theme"
	puts "What decor theme do you like?"
	decor_theme = gets.to_sym
elsif update_key == "none"
	puts "Sounds good, let's move on."
else 
	puts "Decor theme or none?"
end 

user_info[:decor_theme] = decor_theme

puts user_info

