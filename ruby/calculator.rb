
num1 = nil

num2 = nil

operator_string = ""



def calculate(num1,num2,operator_string)

	num1.send(operator_string,num2)

end 

p calculate(2,2,"+")

# => 4

p calculate(4,2,"-")

# => 2 

p calculate(5,10,"*")

# => 50

p calculate(4,2, "/") 

# => 2 





