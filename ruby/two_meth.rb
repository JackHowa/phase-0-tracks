# two methods inside one another

# x = 5 

# y = 1

# def one_method(x,y)
# 	x + y
	# ruby picks the child in the nested method 
	# not allowed to bring outside things into method
	def two_method(x,y,z)
		x + y + z
end 
# end 

# puts one_method(5,1)

puts two_method(5,1,100)