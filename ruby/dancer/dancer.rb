class Dancer 

	attr_reader :name
	attr_accessor :age, :card

        def initialize(name,age)
            @name = name
            @age = age
            @card = []
        end

        def pirouette
        	p "*twirls*"
        end 

        def bow
        	p "*bows*"
        end 

        def queue_dance_with(partner)
        	@card << partner
        end

        def begin_next_dance
        	new_partner = card.shift
        	"Now dancing with #{new_partner}."
        end 

        # spinning is seems important for a dancer
        # printing the spin string for direction
        def spin 
        	p "*spin*"
        end 



end 