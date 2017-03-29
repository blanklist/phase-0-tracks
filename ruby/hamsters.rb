# Gather data about the hamster

puts "Please enter this hamster\'s name"
hamster_name = gets.chomp
puts "What is the volume level of this hamster? 1-10?"
volume = gets.chomp.to_i
puts "What is the fur color of the hamster?"
fur_color = gets.chomp
puts "Is this a good hamster for adoption? (yes/no)"
adoptability = gets.chomp
puts "What is the estimated age of the hamster?"
estimated_age = gets.chomp.to_i


# If estimated age is left blank, set variable to nil

if estimated_age == 0
  estimated_age = nil
end


# Print hamster data to the console

print "Hamster Name: " 
puts hamster_name

print "Volume: "
puts volume

print "Fur color: "
puts fur_color

print "Adopt-ability: "
puts adoptability

print "Estimated Age: "
puts estimated_age
