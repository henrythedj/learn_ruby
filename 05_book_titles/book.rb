class Book

attr_reader :title

def initialize
	@title = ""
end

def title=(name)
	words = name.split
	num = words.length
	i=0
	@title = ""
	num.times do
		unless words[i] == "and" || words[i] == "the" || words[i] == "or" || words[i] == "a" || words[i] == "in" || words[i] == "of" || words[i] == "an"
			words[i] = words[i].capitalize
		end
		if i == 0
			words[i] = words[i].capitalize
		end

		@title = @title + words[i] + " "

		i+=1
	end

	@title = @title.chomp(" ")
	puts @title
end

end
