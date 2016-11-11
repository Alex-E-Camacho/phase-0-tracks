class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good type of #{cookie_type}!"
	end

	def ranking
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def age
		@age = 0
	end

	def gender
		puts @gender
	end

	def ethnicity
		puts @ethnicity
	end
end

st_nick = Santa.new("boy", "hispanic")

# st_nick.speak

# st_nick.eat_milk_and_cookies("oreo")

# puts st_nick.age

# p st_nick.ranking 

# puts st_nick.gender

santas = []

santas << Santa.new("man", "white")
santas << Santa.new("man-ish", "white-ish")
santas << Santa.new("boy", "hispanic")

santas.each do |about|
	about.gender 
	about.ethnicity
end









