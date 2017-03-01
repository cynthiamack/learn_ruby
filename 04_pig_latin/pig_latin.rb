#write your code here
def translate(words)
	ws = words.split(" ")
	wss = ""
	ws.each do |w|
		wss += singleTranslate(w)
		wss += " "
	end
	return wss.rstrip!
end

#squ are
#school

def singleTranslate(word)
	vowels = ['a','e','i','o','u']
	if vowels.include?(word[0]) #if first letter vowel
		return word + "ay"
	elsif vowels.include?(word[1]) #if second letter vowel
		if (word[0] == 'q' && word[1] == 'u')
			return word[2..-1] + word[0..1] + "ay"
		else
			return word[1..-1] + word[0] + "ay"
		end
	elsif vowels.include?(word[2]) #if third letter is a vowel/two leading consonants
		if (word[1] == 'q' && word[2] == 'u')
			return word[3..-1] + word[0..2] + "ay"
		else
			return word[2..-1] + word[0..1] + "ay"
		end
	elsif vowels.include?(word[3]) #three leading consonants
		return word[3..-1] + word[0..2] + "ay" 
	else
		return word
	end
end