#write your code here
def echo word
	word
end

def shout word
	word.upcase
end

def repeat word, num = 1
	phrase = word
	if num != 1
		num = num-1
	end
	num.times do phrase = phrase + " " + word end
	phrase
end

def start_of_word word, num
	word1 = word.split(//)
	word2 = ""
	i=0
	num.times do
		word2 = word2 + word1[i]
		i+=1
	end
	word2
end

def first_word phrase
	words = phrase.split
	word1 = words[0]
end

def titleize word
	array = word.split
	num = array.length
	puts num
	final = ""
	i=0
	if num == 1
		return word.capitalize
	else
		num.times do
			if array[i] != "and" && array[i] != "a" && array[i] != "the" && array[i] != "over" || i==0
				array[i].capitalize!
				puts array[i]
				final = final + array[i] + " "
				i+=1
			else
				puts "little word"
				final = final + array[i] + " "
				i+=1
			end

		end
	end
	puts final
	final.chomp(" ")
end