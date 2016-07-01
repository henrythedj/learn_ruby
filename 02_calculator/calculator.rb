#write your code here
def add num, num2
	num+num2
end

def subtract num, num2
	num-num2
end

def sum array
	final = 0
	array.each do |num| final = final+num end
	final
end

def multiply num, num2=1
	if num.respond_to?('each')
		final = 1
		num.each do |mult| final = mult*final end
		final
	else
		final = num*num2
	end
end

def power num, num2
	num2 = num2-1
	final = num
	num2.times do 
		final = num*final
	end
	final
end

def factorial num
	if num == 0 || num ==1
		final = 1
	else
		count = num
		final = num
		while count > 1
			final = final * (count-1)
			count -=1
		end
	end
	final
end


