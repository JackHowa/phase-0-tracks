=begin 

SPECIES ------------------------ # class 
Puppy 

CHARACTERISTICS ---------------- # attributes 
Ears: Floppy
Cute: yes
Eye count: 2
Name: Fido, Spot, Duchess 

BEHAVIOR ----------------------- #  methods 
Play Dead
Sit 

=end 


# this defines the class 
class Puppy
end


Puppy.methods

# figure out what methods are even available 



duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

# new is a method
# puppy is the class 
# class is like a hash, the blueprint for latter sub-data 
# duchess, fido, and spot are the instances 

# makes three unique instances of a class 



spot.class 

# maybe this will print the class 
# yep that the instance is in 


fido.instance_of?(Array)
# this prints false 
# because fido is an instance of the class Puppy 


fido.instance_of?(Puppy)
# this prints true 


spot.play_dead
# haven't taught spot to do this quite yet 
# we haven't defined the method yet 


# Notice that you can call methods on the class itself (Puppy.new, for example), 
# or on an instance of a class (some_puppy_instance.bark). Methods you call on a class are called class methods. 
# Methods you call on an instance are called instance methods.



# release 2 

str = String.new

# this sets up the new str instance within the String class 

str.length
# that looks up the instance method 


str.empty?
# huh true? 
# basically str is created but it isn't anything 
# sup.empty? returns error so that makes sense then 


str += "huh."

# this will add something within that str instance 

# yep str.empty? is now false 


greeting = String.new("hello")

# this adds the instance greeting 
# adds it to the String class 
# fills the instance greeting with "hello"

greeting.empty? # -> false 

greeting.length
greeting.upcase

# both are examples of instance methods 

