
require 'pry'


class User
	attr_accessor :email, :age
	@@all_user = []

	def initialize(email_user, age_user)
		@email = email_user
		@age = age_user
		@@all_user << @email
		@@all_user << @age
		
	end

	def self.all
		return @@all_user
	end
end
binding.pry
puts "end of file"