# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
list = ""
zombie_apocalypse_supplies.each do |supply| 
	list = list + " " + supply + " *"
end
puts list.chop.strip

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
unordered_array = []
ordered_array = []
zombie_apocalypse_supplies.each { |item| unordered_array << item.downcase }
while unordered_array.length > 0
  ordered_array << unordered_array.min
  unordered_array.delete(unordered_array.min)
end
p ordered_array

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def check_item(string)
	zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
	zombie_apocalypse_supplies.include?(string)
end
p check_item("rations")
p check_item("ammunition")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
light_pack = zombie_apocalypse_supplies.take(5)
p light_pack

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
combined_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).uniq
p combined_supplies


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
list = ""
extinct_animals.each { |animal, year| list = list + animal.to_s + " - " + year.to_s + " * " }
p list.chop.strip.chop.strip

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
extinct_animals.delete_if { |animal, year| year >= 2000 }
p extinct_animals

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
p extinct_animals.each { |animal, year| extinct_animals[animal] -= 3 }

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
p extinct_animals.include?("Andean Cat")
p extinct_animals.include?("Dodo")
p extinct_animals.include?("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
extinct_animals_array = extinct_animals.to_a
extinct_animals_array.insert(0, extinct_animals_array.delete_at(4))
extinct_animals = extinct_animals_array.to_h
p extinct_animals.shift