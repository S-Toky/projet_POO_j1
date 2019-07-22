require 'pry'
require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees
	
	def initialize(a_date_starting, event_duration, title_of_event, attendees_event)
		my_time = a_date_starting
		@start_date = Time.parse(my_time)

		@duration = event_duration.to_i

		@title = title_of_event
		@attendees = attendees_event
	end


	def postpone_24h
		@start_date = @start_date + 86400
	end



	def end_date
		@start_date = @start_date + @duration*60	
	end



	def is_post
		@start_date < Time.now 
	end
		


	def is_futur
		!is_post
	end
	


	def is_soon?
		is_soon = Time.now + 1800
	end
	


	def to_s
		puts ">Titre : #{@title}"
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration} minutes"
		puts ">Invités : #{@attendees.join(', ')}"		
	end
end

binding.pry
puts "end of file"