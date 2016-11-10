class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		print "That was a good type of #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance..."
	end

end

st_nick = Santa.new

st_nick.speak

st_nick.eat_milk_and_cookies("oreo")