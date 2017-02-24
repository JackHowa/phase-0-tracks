
num1 = nil

num2 = nil

operator_string = ""

calc_input = ""

def calculate(num1,operator_string,num2)

	puts "What calculation would you like me to make?"
	puts ("for instance, 4 + 5")

	calc_input = gets.chomp 

	calc_elements = calc_input.split

	# num 1 conversion 
	num1 = calc_elements[0]

	num1 = num1.to_i

	# op conversion 
	operator_string = calc_elements[1]

	# num 2 conversion 
	num2 = calc_elements[2]

	num2 = num2.to_i

	# make the equation 
	output = num1.send(operator_string,num2)

	# print output 
	puts output

end 

calculate(num1,operator_string,num2)







# p calculate(2,2,"+")

# # => 4

# p calculate(4,2,"-")

# # => 2 

# p calculate(5,10,"*")

# # => 50

# p calculate(4,2, "/") 

# # => 2 





