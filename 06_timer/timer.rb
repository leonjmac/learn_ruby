class Timer
 	attr_accessor :seconds, :time_string, :padded

 	def initialize
 		@seconds = 0
 		@minutes = 0
 		@hours = 0
 		@time_string = '00:00:00'
 	end

 	def seconds= seconds
 		@seconds = seconds % 60
 		@minutes = ((seconds-@seconds)/60) % 60
 		@hours = (((seconds-@seconds)/60) / 60).to_i
 	end

 	def seconds
 		@seconds
 	end

 	def time_string
 		sec = @seconds.to_s
 		min = @minutes.to_s
 		hrs = @hours.to_s

 		if sec.to_i < 10
 			sec = '0' + sec.to_s
 		end

 		if min.to_i < 10
 			min = '0' + min.to_s
 		end

 		if hrs.to_i < 10
 			hrs = '0' + hrs.to_s
 		end

 		hrs + ':' + min + ':' + sec 		
 	end
end