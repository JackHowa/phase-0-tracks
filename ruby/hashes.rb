# show the whole hash value
user_info = {
	name: "", 
	age: nil, 
	children: "",
	decor_theme: "",
	experience: nil
}

# asking the user for info 

puts "What's your name?"

user_info[:name] = gets.chomp

puts "How old are you?"

user_info[:age] = gets.to_i

puts "How many children do you have?"

user_info[:children] = gets.to_i

puts "What decor theme do you like?"

user_info[:decor_theme] = gets.chomp

puts "Have you ever done interior design? (y/n)"

user_info[:experience] = gets.chomp

#convert the string to a boolean
if user_info[:experience] == "y"
	user_info[:experience] = true 
else user_info[:experience] == "n"
	user_info[:experience] = false
end

# Give the user the opportunity to update a key (no need to loop, once is fine). 
user_info[:re_enter] = ""
until user_info[:re_enter] == "none"
	puts "Did ya' miss anything?"
	puts "Enter the key you'd like to update (or 'none' to exit)."
	user_info[:re_enter] = gets.to_sym
	
# After all, sometimes users make mistakes! If the designer says "none", skip it. 
# But if the designer enters "decor_theme" (for example), 
# your program should ask for a new value and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

# test update the hash bool
p user_info

