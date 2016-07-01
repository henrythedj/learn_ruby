class Timer

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end
	def seconds
		@seconds
	end
	def seconds=(num)
		@seconds = num
		time_string
	end
	def time_string
		sec = ""
		min = ""
		hr = ""
		until @seconds < 60
			@hours = @seconds/3600
			@seconds = @seconds%3600
			@minutes = @seconds/60
			@seconds = @seconds%60
		end
		if @seconds < 10
			sec = "0" + @seconds.to_s
		else
			sec = @seconds.to_s
		end
		if @minutes < 10
			min = "0" + @minutes.to_s
		else
			min = @minutes.to_s
		end
		if @hours < 10
			hr = "0" + @hours.to_s
		else
			hr = @hours.to_s
		end
		@display = hr + ":" + min + ":" + sec
	end

end
