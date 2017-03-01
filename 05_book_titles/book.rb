class Book
	def initialize 

	end

	def title
		@title
	end

	def title=(t)
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
		@title = nt
	end

end
