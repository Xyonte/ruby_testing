class Book
	attr_accessor :title
	
	def initialize()
	end
	
	def title()
		conjunctions = ['for', 'and', 'nor', 'but', 'or', 'yet', 'so']
		prepositions = ['in', 'of', 'the']
		articles = ['a', 'an']
		words = @title.split(' ')
		full_title = ""
		#split title into individual words
		count = 0
		words.each do |segment|
			if !(conjunctions.include? segment or prepositions.include? segment or articles.include? segment and count != 0)
				full_title += segment.capitalize + " "
			else
				full_title += segment + " "
			end
			count +=1
		end
		#capitalize each word indiscriminately

		full_title.chop
	end
end
