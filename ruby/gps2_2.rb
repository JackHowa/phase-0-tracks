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

	grocery_defaults = {}

	itemized_array = grocery_string.split

	itemized_array.each do |food|
		grocery_defaults[food] = 1
	end 

	return grocery_defaults

end 

grocery_defaults = grocery_itemizer("carrots apples cereal pizza")

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

def grocery_adder(grocery_defaults,grocery_name,grocery_quanity)
	
	grocery_defaults[grocery_name] = grocery_quanity

	return grocery_defaults
end 

grocery_defaults = grocery_adder(grocery_defaults,"soup",2)

# Method to remove an item from the list


# input the updated list into the grocery deleter 
# delete the item and quantity of one pair in the list 
# show that updated list with quanities 
# store the updated list with quanities 

def grocery_deleter(grocery_defaults,item_delete)

	grocery_defaults.delete(item_delete)

	return grocery_defaults

end 

grocery_defaults = grocery_deleter(grocery_defaults,"soup")

# p grocery_defaults


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

def grocery_updater(grocery_defaults,grocery_update,new_quanity)

	grocery_defaults[grocery_update] = new_quanity

	return grocery_defaults

end 

grocery_defaults = grocery_updater(grocery_defaults,"carrots",3)

p grocery_defaults




# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:
