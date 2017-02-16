# caesar cipher 

message = "hellohellooo"

message_length = message.length

current_index = 0

cipher_word = ""

until message_length == current_index 
	cipher_letter = message[current_index].next
	current_index += 1
	cipher_word = cipher_word + cipher_letter
end 

puts cipher_word



