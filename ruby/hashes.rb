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

puts "Did ya' miss anything?"
puts "Enter the key you'd like to update (or 'none' to exit)."

user_info[:re_enter] = gets.chomp

if user_info[:re_enter] == "none"
else 
	puts "So what did you want to change that key's value to?"
	user_info[:re_enter] = user_info[:re_enter].to_sym
	user_info[user_info[:re_enter]] = gets.chomp
end 

#test updated value 
puts user_info
