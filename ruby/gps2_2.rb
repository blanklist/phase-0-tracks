# Method to print a list and make it look pretty
def print_list(list)
# input: completed list
# steps:
  # iterate over list and print formatted list
  # format: each item with its own line
  # "item - quantity"
  list.each do |item, quantity|
  	puts "#{item}, qty: #{quantity}"
  end
# output: implicit return of list
  list
end

# Method to create a list
def create_list(string_of_items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into separate items
  items_in_array = string_of_items.split(" ")
  # feed items into hash
  items_in_hash = {}
  # set default quantity, default quantity of one
  items_in_array.each { |item| items_in_hash[item] = 1 }  
  # print the list to the console [can you use one of your other methods here?]
  print_list(items_in_hash)
# output: [what data type goes here: hash]
end

# Method to add an item to a list
def add_item(list, item, quantity = 1)
# input: list, item name, and optional quantity
# steps: 
  # check for optional quantity. if not present, set to default (1)
  list[item] = quantity
  # update list with input
  list
# output: complete list, updated
end

# Method to remove an item from the list
def remove_item(list, item)
# input: item to be removed, list
# steps: 
  # check if item exists
  # remove item
  list.delete(item)
  # print success message of item removed
  p "You've removed #{item}."
# output: updated list
  list
end

# Method to update the quantity of an item
def update_item(list, item, quantity)
# input: list, item and quantity to be updated to
# steps:
  # update quantity
  list[item] = quantity
  # print success "your cart has been updated!"
  p "Your cart has been updated!"
  list
# output: updated list with new quantity
end


example_list = create_list("")
add_item(example_list, "Lemondade", 2)
add_item(example_list, "Tomatoes", 3)
add_item(example_list, "Onions")
add_item(example_list, "Ice Cream", 4)
remove_item(example_list, "Lemondade")
update_item(example_list, "Ice Cream", 1)
print_list(example_list)