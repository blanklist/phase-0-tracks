#input string
#output string

# .next for each character
# do that as many times as string is long

def encrypt(str)
	i = 0
	output = ""
  while i < str.length
	  output = output + str[i].next
	  i += 1
	end
output
end

# encrypt("zed")

#input string
#output string

# index -1
# "bcd" output "abc", alpha[b] == 1 when we want alpha[0]
# str = "abc"

def decrypt(str)
  alpha = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	output = ""
	while i < str.length
		count = alpha.index(str[i])
	  char_output = count - 1
	  output = output + alpha[char_output]
    i += 1
  end
output  
end

# decrypt("afe")
# decrypt(encrypt("swordfish"))

#The nested method call above processes the encrypt method first and then processes the decrypt method on the returned value of the first method.

# DRIVER CODE BELOW:

p "Would you like to decrypt or encrypt a password?:"
en_dec = gets.chomp
p "What is the password?:"
pass = gets.chomp

if en_dec == "encrypt"
	p encrypt(pass)
elsif en_dec == "decrypt"
	p decrypt(pass)
end