class Santa

	def initialize
		puts "Initializing new Santa instance..."
	end

	def speak
    	puts "Ho, ho, ho! Haaaappy holidays!"
  	end

 	def eat_milk_and_cookies(cookie_type)
  		puts "That was a good #{cookie_type}" 
	end 

end

Jack = Santa.new

Jack.speak

Jack.eat_milk_and_cookies("chocolate chip cookie")