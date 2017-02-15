puts "What's the hamster's name?"

name = gets.chomp

puts "How loud is you hamster on a scale of 1-10?"

volume = gets.to_i

puts "What color is its fur?"

fur = gets.chomp

puts "Is the hamster a good candidate for adoption? True or false?"

good_candidate = gets.to_bool 

puts "What's its estimated age? If you don't know, press enter."

age = gets.chomp

if age == ""
	age = nil 
else
	gets.to_i
end 

puts "The #{fur} hamster #{name} is about a #{volume} on a scale of 10 for loudness."

if age == nil
	puts "We don't know how old #{name} is."
else 
	puts "The hamster is #{age} years old."
end 

if good_candidate == true 
	puts "#{name} is a great candidate for adoption."
else
	puts "There may be better choices than #{name} for adoption."
end 









