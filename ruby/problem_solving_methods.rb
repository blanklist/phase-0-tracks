# RELEASE 0
# method arguments: array of integers, search integers
# output: index of search integer
# can only use .length .each

def simple_search(arr, digit)
# compare each element of arr with digit
  index = 0
  while index < arr.length
# if match, return index of digit
  	if arr[index] == digit
  		return index
  	else
  		index += 1
  	end
# if no match, return nil
  end
  return nil
end

arr = [3, 5, 6, 2, 1]
target = 3
p simple_search(arr, target)

# RELEASE 1
# input: digit, the number of fibonacci calculations to produce
# output: array of fibonacci numbers

# fibonacci + (fibonacci + index - 1)
# output << fibonacci

def fib(index)
  output = [0, 1]                        # need starting point of two numbers to add together
  i = 1                                  # set index at 1 so that we can get that number and the number before it
  index = index - 2                      # I don't like this step but it makes up for the two numbers already in output
  index.times do                         # take the user input of 'index' and create that number of fibonacci numbers (minus the two that we already created (line 33))
  	z = output[i] + output[i - 1]        # generate a new fibonacci number from the summation of two previous elements
  	output << z                          # shovel newly generated fibonacci number into array at last index position
  	i += 1                               # increase our index count
  end
  output                                 # return output array
end

p fib(7)

# RELEASE 2
# BUBBLE SORT
# steps through array
# compares elements and swaps if left index value is greater than right index value
# repeats until no swaps needed

def bubble_sort(unsorted)
	loop do                        # do loop until reaches a break
	  swapped = false              # swapped set to false 
	  (unsorted.length - 1).times do |i|    # swap elements for length minus one (the number of spaces between elements)
		  if unsorted[i] > unsorted[i + 1]    
		  	unsorted[i], unsorted[i + 1] = unsorted[i + 1], unsorted[i]
		    swapped = true                    # swapped is set to true whenever the array was found not completely sorted 
		  end
		end
		break if not swapped                  # if swapped remained false (no elements unsorted) break out of do loop
	end
	unsorted                                # return 'unsorted' (this is a bad variable name) as it was changed into a sorted array in place
end 

unsorted = [4, 3, 2]
p bubble_sort(unsorted)

unsorted = [34, 22, 1, 0, 5]
p bubble_sort(unsorted)