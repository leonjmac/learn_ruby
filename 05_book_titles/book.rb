class Book
	attr_accessor :title

	def title
		_title = []
		_exceptions = ['and', 'the', 'a', 'an', 'in', 'of']
		@title.split(' ').map.with_index { |word, idx| 
			if idx == 0 or !_exceptions.include?(word)
				_title << word.capitalize
			else
				_title << word
			end
		}
		_title.join(' ')
	end
end