puts "What's the hamster's name?"

name = gets.chomp

puts "How loud is you hamster on a scale of 1-10?"

volume = gets.to_i

puts "What color is its fur?"

fur = gets.chomp

puts "Is the hamster a good candidate for adoption? true or false?"

good_candidate = gets.chomp 

puts "What's its estimated age? If you don't know, say Don't know."

age = gets.chomp

if age = "don't know"
	age = nil 
else
	gets.to_i
end 
