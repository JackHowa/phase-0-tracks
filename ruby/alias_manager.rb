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

full_name = "Felicia Torres"

def alias_maker(full_name)
	first_last = full_name.split
	last_first = first_last[1] + " " + first_last[0] 

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

  	regex_vowel = /[#{vowel_crosswalk.keys.join}]/
	vowel_next_name = last_first.gsub(regex_vowel, vowel_crosswalk)

	regex_consonant = /[#{consonant_crosswalk.keys.join}]/
	puts vowel_next_name.gsub(regex_consonant, consonant_crosswalk)

end 

alias_maker(full_name)


