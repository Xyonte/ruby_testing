class Timer
  attr_accessor :seconds
  
  def initalize

  end
  def seconds
  	if @seconds == nil
  		0
  	else
  		@seconds
  	end

  end
  def double_digits(number)
  	while number >= 60
  		number = number - 60
  	end
  	if number < 10
  		"0" + number.to_s
  	else
  		number.to_s
  	end

  end

  def time_string
  	secs = @seconds%60
  	mins = @seconds/60
  	hours = mins/60
  	secs = double_digits(secs)
  	mins = double_digits(mins)
  	hours = double_digits(hours)

  	hours + ":" + mins + ":" + secs
  end
end
