# Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it
# (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.

def FirstFactorial(num)

	if num < 1
		return 1
	end
	
	num * FirstFactorial(num - 1)
end
