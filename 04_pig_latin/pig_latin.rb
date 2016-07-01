#write your code here
def translate w
	words = w.split
	num = words.length
	i = 0
	final = ""
	num.times do
		word = words[i]
		until word[0] == "a" ||word[0] == "e" ||word[0] == "i" || word[0] =="o" || word[0] =="u"
			add = word[0]
			word[0] = ""
			word = word + add
		end
		until word[-1] != "q" && word[0] != "u"
			add = word[0]
			word[0] = ""
			word = word + add
		end
		word = word + "ay"
		words[i] = word
		final = final + words[i] + " "
		i+=1
	end
	puts words
	final.chomp(" ")
end