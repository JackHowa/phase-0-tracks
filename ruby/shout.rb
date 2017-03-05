# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!" + ":)"
#   end 
# end

# p Shout.yell_angrily("hi")

# p Shout.yelling_happily("good bye")

# release 3 

module Shout 
	def order_food(food)
		food + " please!!"
	end 

	def pay_food(food)
		"Here's money for the " + food + "!"
	end 

end 

class Kids
	include Shout
end 

class Adults
	include Shout
end 

kid = Kids.new

p kid.order_food("sandwich")
p kid.pay_food("sandwich")

adult = Adults.new
p adult.order_food("steak")
p adult.pay_food("steak")