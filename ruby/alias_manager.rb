# pseudo 

# Swapping the first and last name

# - first split up the full name into first and last name 
# - then move that first name ahead of the last name 
# - then unsplitting it by joining it back together 

# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) 
# to the next consonant in the alphabet. 
# So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# - take all of lowercase and uppercase vowels and consonants to make a crosswalk
# 	- move them each up one character (closer to z)
# 		-if that moveup in character takes them out of case, then start back at start a
# - use keys to match with reversed name in vowels 
# 	- substitute over time that key with its value 
# 	- output the vowel substitution
# - use keys to match with reversed name in consonants
# 	- substitute over time that key with its value 
# 	- output the vowel and consonant substitution 

#####################

# alias maker-storer 


# declare empty full_name variable for method 
full_name = ""

# declare alias maker method with full_name as variable 
def alias_maker(full_name)

	# declare empty print database variable 
	quit = ""

	# declare empty name hash for iterating through with merge 
	# will print if quit is true 
	name_hash = {}

	# until the user wants to quit and print database 
	# separated quit from full_name so no chance of running input of quit  
	until quit == true

		# user interface with instructions for quit as well
		# current system setup for one first and one last name 
		puts "Enter a first and a last name to get your alias:"
		puts "(type quit to exit)"

		# starting off with alias input so quit doesn't become full_name key
		alias_input = gets.chomp 

		# setup if/then for looping through all the names 
		# will set quit boolean to true 
		if alias_input == "quit"
			quit = true 

			# test code 
			# prints the final hash 
			puts name_hash
		else 
			# alias input becomes full_name 
			full_name = alias_input
		end 

		# divide full name based on its space 
		# thus need one first and one last 
		first_last = full_name.split

		# bring back one first and one last in last-first order
		last_first = first_last[1] + " " + first_last[0] 

		# set hash for all vowels in caps and lower for rotate one forward (toward z)
		# this way to iterate using gsub quicker 
		# end of vowel list starts back at beginning for respective case 
		# prevent $ next and $ succ errors 
		vowel_crosswalk = {
			"a"=>"e",
			"A"=>"E",
			"e"=>"i",
			"E"=>"I",
			"i"=>"o",
			"I"=>"O",
			"o"=>"u",
			"O"=>"U",
			"u"=>"a",
			"U"=>"A"
		}

		# set hash for all consonants in caps and lower for rotate one forward (toward z)
		# z and Z becomes a and A, respectively, to prevent $ next and $ succ errors 
	  	consonant_crosswalk = {
			"a" =>"b",
			"b" =>"c",
			"c" =>"d",
			"d" =>"f",
			"f" =>"g",
			"g" =>"h",
			"h" =>"j",
			"j" =>"k",
			"k" =>"l",
			"l" =>"m",
			"m" =>"n",
			"n" =>"p",
			"p" =>"q",
			"q" =>"r",
			"r" =>"s",
			"s" =>"t",
			"t" =>"v",
			"v" =>"w",
			"w" =>"x",
			"x" =>"y",
			"z" =>"a",
			"A" =>"B",
			"B" =>"C",
			"C" =>"D",
			"D" =>"F",
			"F" =>"G",
			"G" =>"H",
			"H" =>"J",
			"J" =>"K",
			"K" =>"L",
			"L" =>"M",
			"M" =>"N",
			"N" =>"P",
			"P" =>"Q",
			"Q" =>"R",
			"R" =>"S",
			"S" =>"T",
			"T" =>"V",
			"V" =>"W",
			"W" =>"X",
			"X" =>"Y",
			"Y" =>"Z",
			"Z" =>"A"
	}

		# use the hash keys to find using gsub their rotated value 
		# join brings it together so gsub can iterate through and replace pattern
	  	vowel_find = /[#{vowel_crosswalk.keys.join}]/
		vowel_next_name = last_first.gsub(regex_vowel, vowel_crosswalk)

		consonant_find = /[#{consonant_crosswalk.keys.join}]/
		alias_name = vowel_next_name.gsub(regex_consonant, consonant_crosswalk)

		# prints new alias_name output so each user gets their full name conversion 
		# fulfills release 1 request for individual user 
		puts alias_name

		# store alias and iterate through hash for new names
		# fulfills release 2 request for admin who gets all the hash keys and values 
		name_hash.merge! full_name => alias_name
	
	# end the until quit is true loop 
	end	

# end the method 
end 

# call the method 
alias_maker(full_name)

