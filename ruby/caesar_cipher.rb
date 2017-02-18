# caesar cipher 



message = "hellohellooo"


def encrypt(message)

	message_length = message.length

	current_index = 0

	cipher_word = ""

	until message_length == current_index 
		cipher_letter = message[current_index].next
		current_index += 1
		cipher_word = cipher_word + cipher_letter
	end 

puts cipher_word

end

encrypt(message)

def decrypt(message)

	cipher_length = cipher_word.length

	current_index = 0

	solution_word = ""

	until cipher_length == current_index 
		solution_letter = cipher_word[current_index].!next
		current_index += 1
		solution_word = solution_word + solution_letter
	end 

puts cipher_word

end

decrypt(message)



