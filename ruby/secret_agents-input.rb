puts "Would you like to encrypt or decrypt a message?"

choice = gets.chomp 

puts "What should I input into the encrypter/decrypter machine?"

input = gets.chomp 

puts "What caesar shift was applied to the message? (1 for +1)"

shift = gets.to_i


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
		output_number = input_number - shift
		output_letter = alphabet[output_number] 
		current_index += 1
		output_word = output_word + output_letter
	end 

puts output_word

end 

decrypt(input)



















if choice == "encrypt"
	then 