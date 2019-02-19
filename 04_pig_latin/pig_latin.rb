#04_pig_latin
def translate phrase
	# get phrase and split into words
	words = phrase.split(' ')

	# set chars to ignore
	vowelRegEx = /[aeiouAEIOU]/
	lettersRegEx = /[A-Za-z]/

	# items to be added
	punctuation = ''
	suffix = 'ay'
	shiftU = false

	# array to hold converted phrase
	latinWords = []

	words.each do |word|
		# Separate letters from non-letters/punctuation
		letters = word.split('').take_while {|chr| lettersRegEx.match(chr)}
		punctuation = word.reverse.split('').take_while {|chr| !lettersRegEx.match(chr)}

		word.split('').each do |chr|
			if (vowelRegEx.match(chr) == nil)
				if chr.downcase == 'q'
					shiftU = true
				else 
					shiftU = false
				end
				letters.push(letters.shift)
			else
				# Hit a vowel - stop unless...
				if shiftU and chr == 'u'
					letters.push(letters.shift)
				end				
				break
			end
		end
		
		letters << suffix << punctuation.join('') << ' '
		letters = letters.join('')
		if (word.start_with?(/[A-Z]/))
			letters.capitalize!
		end
		latinWords.push(letters)
	end	
	latinWords.join().chop
end