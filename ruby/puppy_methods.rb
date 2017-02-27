class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  

end 

# can call fetch 
spot = Puppy.new

spot.fetch("bone")

