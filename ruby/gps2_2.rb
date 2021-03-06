# pseudo 

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a empty collection for the items in a list 
  # Break down the input list by the spaces 
  # 	Set the input list equal to the itemized list by spaces
  # Show that itemized list 
  # Create a blank space for relational data 
  # UNTIL every item had a value 
  # 	Assign a default quantity to the individual items 
  # 	That individual item and their quanity added to empty relational collection
  # Show the item and default quantity for all items using sentence structure 

 # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# grocery_list = []

def grocery_itemizer(grocery_string)

	groceries = {}

	itemized_array = grocery_string.split

	itemized_array.each do |food|
		groceries[food] = 1
	end 

	return groceries

end 

groceries = grocery_itemizer("carrots apples cereal pizza")

# grocery_string = "carrots apples cereal pizza"



# Method to add an item to a list
# input: list, item name, and optional quantity

# steps:

# Input the itemized list into the new grocery adder 
# Input the item name and optional quanity into adder 
# Relate the item name with its optional quantity 
# Include the item pair in the itemized list 
# Show the grocery list with new item 

# output:

grocery_name = ""

grocery_quanity = ""

def grocery_adder(groceries,grocery_name,grocery_quanity)
	
	groceries[grocery_name] = grocery_quanity

	return groceries
end 

groceries = grocery_adder(groceries,"soup",2)

# Method to remove an item from the list


# input the updated list into the grocery deleter 
# delete the item and quantity of one pair in the list 
# show that updated list with quanities 
# store the updated list with quanities 

def grocery_deleter(groceries,item_delete)

	groceries.delete(item_delete)

	return groceries

end 

groceries = grocery_deleter(groceries,"soup")

# p groceries


# input:
# steps:
# output:

# Method to update the quantity of an item


# input:

# input the whole updated list into grocery modifier 
# input the item we want to change and its new quanity 
# use the update item name to find the item in the original list 
# 	Assign a new quanity to that update item name 
# Show the updated list 
# store the updated list 

def grocery_updater(groceries,item_update,new_quanity)

	groceries[item_update] = new_quanity

	return groceries

end 

groceries = grocery_updater(groceries,"carrots",3)

# steps:
# output:

# Method to print a list and make it look pretty
# input the whole updated list into grocery lister 
# FOR every item
	# list the item and the quantity to buy 

# input:
# steps:
# output:

def grocery_lister(groceries)
	groceries.each do |grocery,quantity|
		puts "Buy #{quantity} #{grocery}(s) at the grocery store."
	end 
end 

grocery_lister(groceries)

# What did you learn about pseudocode from working on this challenge?

# by pseudocoding this gps, I learned how to focus on order or sequence of logic. 
# I also practiced using general terms rather than Ruby-specific ones.
# At first, it was hard to avoid Ruby words; I was struggling, using vague ones. 
# Yet my navigator helped a lot by recommending more specific readable, non-Ruby words. 


# What are the tradeoffs of using arrays and hashes for this challenge?

# Arrays can be helpful for sequential data;  
# hashes are better for relational data between two data points, like item and quantity. 


# What does a method return?

# A method returns the last data point, like the last key value
# Therefore, it's good practice to have a separate method for printing returns or values. 


# What kind of things can you pass into methods as arguments?

# You can pass through parameters like integers, strings and booleans as variables 


# How can you pass information between methods?

# YOu can pass info between methods using variables 
# and setting those equal outside of the method 


# What concepts were solidified in this challenge?
# Concepts like method parameters and each logic 

# and what concepts are still confusing?
# Pseudocode syntax and vocab is still challenging 
# Want to improve my algorithmic thinking 
