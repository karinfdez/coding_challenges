# Write a function to test whether a given input is a valid email address.

# At least one letter character at the beginning
# All characters between the first character and the @ (if any) must be letters, numbers, or underscores
# There must be an @ character (after the points listed just now)
# After the @ character, there must be at least one word character (letter, number, or underscore) or hyphen
# The input must NOT be case-sensitive
# The function should return true or false.

def validate(email)
	#Input case insensitive
	email.downcase!
	if (email=~/['@']/)!=nil && (email=~/['.']/)
		#Before the @
		split_email=email.split('@')
		split_at_dot=split_email[1].split(".")
		@first_word=split_email[0]
		#Domain name(Between the @ and the dot.)
		@second_word=split_at_dot[0]
		#After the dot 
		@third_word=split_at_dot[1]
	else
		return false
	end

	(email=~ /^[a-z]/)!=nil  && 
	(@first_word[1..@first_word.length-1]=~/[-\w]/)!=nil && (@second_word[1..@second_word.length-1]=~/[-\w]/)!=nil &&
	#Check email, on first word(before @) and after first letter that must be letters, numbers,underscore or hyphen
	 (@third_word=~/^[-a-z]/)!=nil
end

puts validate('abc@example.com')==true
puts validate('abcexample.com')==false
puts validate('abc@example')==false
puts validate('ab_c@example.com')==true
puts validate('ab3c@example.com')==true
puts validate('_bc@example.com')==false
puts validate('a%^@example.com')==false
puts validate('a%5@example.com')==true
puts validate('a%5@example.5om')==false

