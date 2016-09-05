#write your code here

def add one, two
	one + two
end

def subtract one, two
	one - two
end

def sum array
	sum = 0
	array.each do |num|
		sum += num
	end
	sum
end

def multiply *arguments
	answer = 1
	arguments.each do |numb|
		answer *= numb
	end
	answer
end

def power one, two
	one**two
end

def factorial factor
	answer = 1
	start = factor
	while (start > 0)
		answer *= start
		start -= 1
	end
	answer
end