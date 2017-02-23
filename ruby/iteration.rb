# release1


# array array array

# declare an array 
work_week = ["Monday","Tuesday","Wednesday","Thursday","Friday"]

work_week_short = []

# print the array 
p work_week

# iterate through array with each
# chop shortens each day by one char
work_week.each do |day|
	work_week_short << day.chop
end 

# indicate the difference between new array and old 
puts "after iteration"

# print new array 
p work_week_short


# use map! to iterate through array 
work_week.map! do |day|
	day.upcase
end 

# indicate change after map 
puts "What the work week looks like from the weekend perspective:"
p work_week


# release1


# hash smash

# declare hash
hs_grades = {"chemistry" => "c", "stats" => "b", "history" => "a"} 

# declare new empty hash 
college_grades = {}

# iterate through hash with each 
hs_grades.each do |course,grade|
	college_grades[course] = grade.next
end 
# inspo via https://stackoverflow.com/questions/812541/how-to-change-hash-values#812551

#print hash after each 
puts "What grades look like in high school:"
p hs_grades

puts "What grades look like in college:"
p college_grades



# release 2


# array array arrray

# declare array
fav_nums = [3, 5, 7, 14, 21] 

puts "Here's some of my favorite numbers:"
p fav_nums

puts "Delete any numbers less than 5"
fav_nums.delete_if { |num| num < 5 }

p fav_nums
# via http://ruby-doc.org/core-2.4.0/Array.html#method-i-delete_if 

# redeclare array 
fav_nums = [3, 5, 7, 14, 21] 
puts "Here's some of my favorite numbers:"

p fav_nums
puts "Keep numbers less than 5"
fav_nums.keep_if { |num| num < 5}

p fav_nums

# redeclare array 
puts "Here's some of my favorite numbers:"
fav_nums = [3, 5, 7, 14, 21] 
p fav_nums

puts "Select only even numbers."
fav_nums.select! { |num| num.even? } 
p fav_nums


# redeclare array 
puts "Here's some of my favorite numbers:"
fav_nums = [3, 5, 7, 14, 21] 
p fav_nums

# make false 
p fav_nums.first(1)


# hash bash 

# declare hash 

fav_letters = {1 => "j", 2 => "y", 3 => "s"}













