class Puppy

 	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

 	def speak(num) 
  	num.times {puts "Woof"} 
	end 

	def roll_over
		puts "Roll over!"
	end 

	def dog_years(num)
		dog_age = num * 7 
		return dog_age
	end

	def sit
		puts "Sit down!"
	end  

end 

# can call fetch 
spot = Puppy.new

# spot.fetch("bone")

# spot.speak(3)

# spot.roll_over

# p spot.dog_years(4)

spot.sit

