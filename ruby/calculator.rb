
# num1 = nil

# num2 = nil

# operator_string = ""

input = ""

def calculate(input)

	done = false

	count = 0

	calc_hash = {}

	until done == true 

		puts "What calculation would you like me to make?"
		puts "[for instance, 4 + 5 ]"
		puts "Or, type 'done' to finish."

		input = gets.chomp 

		if input == "done"
			done = true 
			puts "#{count} operation(s) were performed:"

			calc_hash.each { |expression,output|
				puts "#{expression} = #{output}"
			}
		else 
			calc_input = input 
		end 

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

		calc_hash.merge! calc_input => output

		# print output 
		if done == false 
			puts output
		end 

		count += 1 

	end 
end 

calculate(input)







# p calculate(2,2,"+")

# # => 4

# p calculate(4,2,"-")

# # => 2 

# p calculate(5,10,"*")

# # => 50

# p calculate(4,2, "/") 

# # => 2 





