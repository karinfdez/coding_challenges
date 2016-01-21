#Create a function that calculates the sum of the two lowest numbers given an array 
#of 5 positive integers. No floats or empty arrays will be passed.

def sum_lower (array)
	#solution 1
	# array.sort!
	# array[0]+array[1]
	
	#solution 2
	# array.sort[0..1].inject(:+)
	#or
	array.sort![0..1].reduce(:+)

	#solution 3
	# array.sort!.first(2).reduce(:+)
end

p sum_lower([3,4,1,2,5])


#array.sort[0..1]: Sort array from lowest to higher and return first 2 elements(pos 0 and pos 1).
#.inject(:+) : Add elements of array.