# Take clients information and populate a hash with it. (appropriate data type?)
# Output hash to screen (formatting?)
# Ask if code is correct and update if necessary.

client = {}

# USER INPUT
p "Please enter all client data below:"
p "Client's First Name:"
client[:first_name] = gets.chomp
p "Client's Last Name:"
client[:last_name] = gets.chomp
p "#{client[:first_name]}\'s age:"
client[:age] = gets.chomp.to_i
p "#{client[:first_name]}\'s number of children:"
client[:number_of_children] = gets.chomp.to_i
p "What is #{client[:first_name]}\'s decor theme?"
client[:decor_theme] = gets.chomp
p "What is the square footage of #{client[:first_name]}\'s home?"
client[:square_footage] = gets.chomp.to_i
p "Does #{client[:first_name]} like Scandinavian style? yes/no"
scandinavian_preference = gets.chomp
client[:scandinavian_preference] = true if scandinavian_preference == "yes"
client[:scandinavian_preference] = false if scandinavian_preference == "no"
p "Does #{client[:first_name]} like Industrial style? true/false"
industrial_preference = gets.chomp
client[:industrial_preference] = true if industrial_preference == "yes"
client[:industrial_preference] = false if industrial_preference == "no"
p "Does #{client[:first_name]} like Bohemian style? true/false"
bohemian_preference = gets.chomp
client[:bohemian_preference] = true if bohemian_preference == "yes"
client[:bohemian_preference] = false if bohemian_preference == "no"

p "Here is the client data entered:"
p client
while true
  p "Would you like to make any changes? yes/no"
  answer = gets.chomp
  if answer == "yes"
  	p "Which key would you like changed?"
  	key_select = gets.chomp.to_sym
  	p "What would you like the new value to be?"
  	new_value = gets.chomp
  	client[key_select] = new_value
  	p client
  elsif answer == "no"
  	break
  end
end

