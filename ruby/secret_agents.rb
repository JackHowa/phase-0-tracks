puts "What would you like to decrypt?"

def decrypt(input)
	input_length = input.length 

	input_number = 0

	current_index = 0 

	output_number = 0

	output = ""

	alphabet = "abcdefghijklmnopqrstuvwxyz"

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



# puts "What is the caesar shift for the message? (1 for +1)"

# 	shift = gets.to_i

# 	if crypt_choice == "decrypt"
# 		shift = -(shift)
# 	end 



# puts "Would you like to decrypt a message?"

# input = gets.chomp 

# puts "What should I input into the encrypter/decrypter machine?"

# input = gets.chomp 