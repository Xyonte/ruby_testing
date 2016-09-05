#write your code here
def echo input
	input

end

def shout input
	input.upcase
end

def repeat input, each = nil
	answer = ""
	if each != nil
		each.times do |ignoreme|
			answer = answer + input + " "
		end
		answer.chop
	else
		input + " " + input
	end

end

def start_of_word string, sublength
	string[0, (sublength)]
end

def first_word  strings
	word = strings.split()
	word[0]
end

def titleize name
	final_title = ""
	counter = 0
	title = name.split(' ')
	title.each do |word|
		if (word != "and" and word != "the" and word != "over" or counter == 0)
			final_title += word.capitalize + " "
		else
			final_title += word + " "
		end
		counter += 1;
	end
	final_title.chop
end