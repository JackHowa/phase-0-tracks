house = {
	'Living Room' => [ 
		'sofa',
		'chandelier'],
	'Kitchen' => [
		'Fridge',
		'Toaster'
	]
}

p house

house['Living Room'].push('cat')

p house

# ====================================== 
# INSTRUCTIONS 

# We made you a nested data structure. Familiarize yourself with the code, then follow the commented instructions at the bottom of this file. This is for your learning only -- it will not be submitted.
# ====================================== 


airplane = {
    first_class: {
        pretty_name: 'First Class',
        seat_info: {
            total_seats: 6,
            seats_available: 4
        },
        meals: [
            "Leg of Pampered Lamb", 
            "Kale Salad"
        ]
    },
    business_class: {
        pretty_name: 'Business Class',
        seat_info: {
            total_seats: 12,
            seats_available: 9
        },
        meals: [
            "Sustainably Cultivated Lobster with Housemade Butter", 
            "Kale Salad"
        ]
    },
    coach: {
        pretty_name: 'Coach',
        seat_info: {
            total_seats: 50,
            seats_available: 23
        },
        meals: []
    }
}

# 1.
# Guess the return value of this line:

# p airplane[:first_class][:pretty_name]

# First Class 
# yep 

# Then uncomment the line above and check your guess.

# 2.
# Guess the return value of this line:

# p airplane[:business_class][:meals]

# "Sustainably Cultivated Lobster with Housemade Butter", 
            "Kale Salad"
            
# huh it was only kale salad? 
# oh then when I print it it will show the whole thing 

# Then uncomment the line above and check your guess.

# 3.
# Guess the return value of this line:

# airplane[:business_class][:meals][1]
"kale salad"
# Then uncomment the line above and check your guess.

# 4.
# How will this line affect the data structure?

# p airplane

# airplane[:coach][:meals].push("Sad Plastic Tray of Corn")

# p airplane
# under coach meals, there will be "Sad Plastic Tray of Corn"
# Uncomment the lines above and check your guess by adding a line that prints the new data structure.

# 5.
# # How would you reverse the meals list in First Class?
# p airplane[:first_class][:meals]
# airplane[:first_class][:meals].reverse!
# p airplane[:first_class][:meals]
# Add a line of code that does that here.

# 6.
# How would you lowercase the pretty name of one of the classes?
p airplane[:first_class][:pretty_name]
airplane[:first_class][:pretty_name].downcase!
p airplane[:first_class][:pretty_name]

# Add a line of code that does that here.


