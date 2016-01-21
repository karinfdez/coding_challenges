#Any word or phrase that exactly reproduces the letters in another order is an anagram."
#(Wikipedia). Add numbers to this definition to be more interest.


def isAnagram?(test,original)

    isBlock=proc {
    	test.downcase.chars.sort!.join==original.downcase.chars.sort!.join
    }
	test.gsub!(/\s+/, "")
	original.gsub!(/\s+/, "")
	test.length==original.length ? isBlock.call : false 
end

p isAnagram?("hello","12345")==false
p isAnagram?("William Shakespeare","I am a weakish speller")==true
p isAnagram?("William Shakespeare","I am a weakish speller")==true
p isAnagram?("Silent","Listen")==true
p isAnagram?("Car","Cat")==false
p isAnagram?("12345","54321")==true