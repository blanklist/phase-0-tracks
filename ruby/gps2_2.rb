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
  p items_in_hash
# output: [what data type goes here: hash!]
end

example_list = create_list("apples bananas cereals avocados")

# Method to add an item to a list
def add_item(list, item, quantity = 1)
# input: list, item name, and optional quantity
# steps: 
  # check for optional quantity. if not present, set to default (1)
  list[item] = quantity
  # update list with input
  p list
# output: complete list, updated
end

add_item(example_list, "nutela", 4)
add_item(example_list, "donuts")


# Method to remove an item from the list
def remove_item(list, item)
# input: item to be removed, list
# steps: 
  # check if item exists
  # remove item
  list.delete(item)
  # print success message of item removed
  p list
# output: updated list
end

remove_item(example_list, "bananas")

# Method to update the quantity of an item
def update_item(list, item, quantity)
# input: list, item and quantity to be updated to
# steps:
  # check if item exists
  # update quantity
  list[item] = quantity
  # print success "your cart has been updated!"
  p "Your cart has been updated!"
  p list
# output: updated list with new quantity
end

update_item(example_list, "bananas", 100)

# Method to print a list and make it look pretty
def print_list(list)
# input: completed list
# steps:
  # iterate over list and print formatted list
  list.each do |item, quantity|
  	puts "#{item}, qty: #{quantity}"
  end
  # format: each item with its own line
  # "item - quantity"
# output: implicit return of list
end

print_list(example_list)