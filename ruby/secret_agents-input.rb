puts "Would you like to encrypt or decrypt a message?"

crypt_choice = gets.chomp 

puts "What should I input into the encrypter/decrypter machine?"

input = gets.chomp 

puts "What is the caesar shift for the message? (1 for +1)"

shift = gets.to_i

if crypt_choice == "decrypt"
	shift = -(shift)
end 


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