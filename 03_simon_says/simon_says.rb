#03_simon_says
def echo msg
	msg
end

def shout msg 
	msg.upcase
end

def repeat msg, times = 2
	((msg + ' ') * times).strip
end

def start_of_word word, chars = 1
	word.slice(0, chars)
end

def first_word words
	words.split(' ')[0]
end

def titleize words
	exceptions = ['at','and','the', 'over']
	words = words.split(' ')
	string = []

	words.each_index do |idx|
		word = words[idx]
		if idx == 0 or !exceptions.include?(word)
			string.push(word.capitalize)
		elsif
			string.push(word)
		end
	end	
	string.join(' ')
end