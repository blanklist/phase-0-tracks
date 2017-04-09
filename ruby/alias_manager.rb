## CONVERSION ALGORITHM
# compare each letter of input with vowels or consonants
# update match with next corresponding vowel or consonant

def encode(user_name)
	user_name = swap_first_last(user_name)  # swap first and last name (method below)
  name_arr = user_name.split('')  # split into array
  vowels = "aeiou"                        # define vowels and consonants
  consonants = "bcdfghjklmnpqrstvwxyz"
  i = 0
  while i < name_arr.length               # step through characters
  	if name_arr[i] == "u"                 # handles edge cases of end of comparison strings
  		name_arr[i] = "a"
  		i += 1
  	elsif name_arr[i] == "z"
    	name_arr[i] = "b"
    	i += 1
  	elsif vowels.include? name_arr[i]     # compare with vowels string
  		name_arr[i] = vowels[vowels.index(name_arr[i]) + 1]  # replaces array element value with next of vowels string
      i += 1
    elsif consonants.include? name_arr[i]
    	name_arr[i] = consonants[consonants.index(name_arr[i]) + 1]  # replaces array element value with next of consonants string
      i += 1
    else
    	i += 1 # non-characters are skipped
    end
  end
	user_name_lower_case = name_arr.join('') 
	user_name_lower_case.split.map { |letter| letter.capitalize }.join(' ')
end

def swap_first_last(input)  # split first and last into array, swap those names, return downcased string (More than two word inputs will not work correctly)
  arr_input = input.split(' ')
  arr_input[0], arr_input[1] = arr_input[1], arr_input[0]
  swapped = arr_input.join(' ').downcase
end


## USER INTERFACE

data = {} # initialize Hash for data storage

while true
	p "Please enter a name to convert or 'done' if finished: "
  user_name = gets.chomp
  if user_name == 'done'
  	break
  end
  converted = encode(user_name)
	p "#{user_name}, your secret agent name (SHHHHH!) is #{converted}."
	data[user_name] = converted
end


## DATA DUMP

p "Names converted this session: "
data.each { |user, converted| p "#{user} was converted to #{converted}." }