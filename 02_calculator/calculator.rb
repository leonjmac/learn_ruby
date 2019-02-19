#02_calculator
def add lhs, rhs
	lhs + rhs
end

def subtract lhs, rhs
	lhs - rhs
end

def sum numbers
	@running_sum = 0
	numbers.each do |number| 
		@running_sum += number
	end
	@running_sum
end

def multiply numbers
	@running_sum = 1
	numbers.each do |number| 
		@running_sum *= number
	end
	@running_sum
end

def power base, exponent
	base**exponent
end

def factorial factor
	if (factor == 0 or factor == 1)
		1
	else
		factor * factorial(factor-1)
	end
end