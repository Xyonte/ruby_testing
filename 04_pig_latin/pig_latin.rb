#write your code here
def translate wordy
	vowels = ['a','e','i','o','u', 'y']
	consonant_count = 0
	words = wordy.split(' ')
	sentence = ""
	words.each do |word|
		final = ""
		if vowels.include? word[0,1]
			final = word + "ay"
		else 
			consonant_count = 1
			n = 0
			while !(vowels.include? word[n,1])
				if word[n,2] == "qu"
					consonant_count += 2
					n+=2
				else
					consonant_count += 1
					n+=1
				end
			end
			final = word[consonant_count-1, word.length] + word[0, consonant_count-1] + "ay"
		end
		sentence += final + " "
	end
	sentence.chop
end

puts translate "square"