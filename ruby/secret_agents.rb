puts "What would you like to encrypt?"

input = gets.chomp

def encrypt(input)
	input_length = input.length 

	input_number = 0

	current_index = 0 

	output_number = 0

	output = ""

	# need to double it because z or latter letters will go to first
	# anyway in the indexing process. 
	alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

	until input_length == current_index
		input_letter = input[current_index]
		input_number = alphabet.index(input_letter)
		output_number = input_number + 1
		output_letter = alphabet[output_number] 
		current_index += 1
		output = output + output_letter
	end 

puts output

end 

encrypt(input)

puts "What would you like to decrypt?"

input = gets.chomp

def decrypt(input)
	input_length = input.length 

	input_number = 0

	current_index = 0 

	output_number = 0

	output = ""

	alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

	until input_length == current_index
		input_letter = input[current_index]
		input_number = alphabet.index(input_letter)
		output_number = input_number - 1
		output_letter = alphabet[output_number] 
		current_index += 1
		output = output + output_letter
	end 

puts output

end 

decrypt(input)

decrypt(encrypt("swordfish"))





#caesar shift option ideas 
# puts "What is the caesar shift for the message? (1 for +1)"

# 	shift = gets.to_i

# 	if crypt_choice == "decrypt"
# 		shift = -(shift)
# 	end 