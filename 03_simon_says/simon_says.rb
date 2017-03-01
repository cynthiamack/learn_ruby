#write your code here
def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, count=2)
	i = 0
	s = ""
	while i < count
		s += word
		if (i < count - 1)
			s += " " 
		end
		i += 1
	end
	return s
end

def start_of_word(word,letter)
	letter = letter - 1
	if letter == 0
		return word[letter]
	else
		return word[0..letter]
	end
end

def first_word(stig)
	s = stig.split
	return s[0]
end

def titleize(t)
	conjunctions = ["and","the","a","an","but","or","on","in","with","over","of"]
		t = t.split(" ")
		nt = ""
		t[0].capitalize!
		t.each do |w|
			if conjunctions.include?(w) 
				nt += w
				nt += " "
			else
				nt += w.capitalize
				nt += " "
			end
		end
		nt.rstrip!
		return nt
	end








