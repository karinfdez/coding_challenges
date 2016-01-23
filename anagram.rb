#Any word or phrase that exactly reproduces the letters in another order is an anagram."
#(Wikipedia). Add numbers to this definition to be more interest.
#The challenge is to write the function isAnagram to return True if the word 
#test is an anagram of the word original and False if not.
#Note: Anagrams are case insensitive, ignore all non-alphanumeric characters,
#input will always be two strings. 

def isAnagram?(test,original)

    isBlock=proc { | word1, word2 |
    	word1.downcase.chars.sort!.join==word2.downcase.chars.sort!.join
    }
    #Remove all non-alphanumeric characters.
    test.gsub!(/\W+/, '')
    original.gsub!(/\W+/, '')	
    
	test.length==original.length ? isBlock.call(test, original) : false 
end

p isAnagram?("hello","12345")==false
p isAnagram?("William Shakespeare","I am a weakish speller")==true
p isAnagram?("William Shakespeare","I am a weakish speller")==true
p isAnagram?("Silent","Listen")==true
p isAnagram?("Car","Cat")==false
p isAnagram?("12345","54321")==true