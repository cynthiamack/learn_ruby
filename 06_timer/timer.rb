class Timer
	attr_accessor :seconds
  
  def initialize
  	@seconds = 0
  end

  def time_string
  	return "00:00:00" if @seconds == 0
  	ts = ""
  	seconds = @seconds
  	minutes = 0
  	hours = 0
	  	while seconds != 0 do
		  	if (seconds > 3600)
		  		hours = seconds / 3600
		  		hours.floor
		  		seconds = seconds % 3600
		  		ts += padded(hours) + ":"

		  	elsif (seconds > 60)
		  		minutes = seconds / 60
		  		minutes.floor
		  		seconds = seconds % 60
		  		ts += padded(minutes) + ":"

			else 
				if (hours > 0 && minutes > 0)
					ts += padded(seconds)
				elsif (hours > 0)
					ts += "00:" + padded(seconds)
				elsif (minutes > 0)
					ts.prepend("00:")
					ts += padded(seconds)
				else
					ts += "00:00:" + padded(seconds)
				end
				seconds = 0
		  	end
		end
	  	return ts
  end

  def padded(n)
  	if n < 10
  		return "0#{n}"
  	else 
  		return "#{n}"
  	end
  end

end
