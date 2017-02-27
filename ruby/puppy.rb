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


