class Dancer 

	attr_accessor :name, :age, :card

        def initialize(name,age)
            @name = name
            @age = age
            @card = []
        end

        def pirouette
        	"*twirls*"
        end 

        def bow
        	"*bows*"
        end 

        def queue_dance_with(partner)
        	@card << partner
        end

        def begin_next_dance
        	new_partner = card.shift
        	"Now dancing with #{new_partner}."
        end 



end 