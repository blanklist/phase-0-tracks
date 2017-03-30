p "How many employees will be processed?"
count = gets.chomp.to_i

while count > 0
	p "What is your name?"
	name = gets.chomp
	p "How old are you?"
	age = gets.chomp.to_i
	p "What year were you born?"
	birth_year = gets.chomp.to_i
	p "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	garlic = gets.chomp
	p "Whould you like to enroll in the company's health insurance? (yes/no)"
	insurance = gets.chomp
  
	age_check = 2017 - birth_year

	if name == "Drake Cula" || name == "Tu Fang"
		result = "Definitely a vampire."
	elsif (age == age_check) && (garlic == "yes" || insurance == "yes")
	  result = "Probably not a vampire."
	elsif (age != age_check) && (garlic == "no" || insurance == "no")
	  result = "Probably a vampire."
	elsif age != age_check && garlic == "no" && insurance == "no"
	  result = "Almost certainly a vampire."
	else
		result = "Results inconclusive."
	end

  p "Please name any allergies, one at a time then 'enter'. If none, type 'done'?"
  allergies = gets.chomp
	while true
    if allergies == "sunshine"
	  	result = "Probably a vampire."
	  	break
	  elsif allergies == "done"
	  	break
	  else	
	    p "Anything else? enter 'done' if no."
	    allergies = gets.chomp	
	    if allergies == "sunshine"
	  	  result = "Probably a vampire."
	    elsif allergies == "done"
	  	  break
	  	end
	  end
	end
p result
count -= 1
puts
end

p "Actually\, never mind\! What do these questions have to do with anything\? Let\'s all be friends."