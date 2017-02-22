#  declare an array 

grades = ["a", "b", "c", "d"]

# new_grades = []

# p grades

# # each one using .each

# grades.each { |student| 
# 	new_grades << grades.reverse
# }

# p new_grades

# map 

puts grades 
grades.map { |student|
	grades.shuffle!
}

puts grades

# # declare a hash

# food_ranking = {
# 	"pizza" => 5,
# 	"pb&j" => 8,
# 	"salmon" => 3
# }

# each 

# map 