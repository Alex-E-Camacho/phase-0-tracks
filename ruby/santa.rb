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

	# Getter methods
	def age
		@age = 0
	end

	def gender
		puts @gender
	end

	def ethnicity
		puts @ethnicity
	end

	# Setter methods
	def celebrate_birthday	
		@age = @age + 1
	end

	def get_mad_at(array, deer_name)
	array.delete_at(array.index(deer_name))
	array << deer_name
	print array 
	end

	def gender=(new_gender)
		@gender = new_gender
	end
end

st_nick = Santa.new("boy", "hispanic")

# st_nick.speak

# st_nick.eat_milk_and_cookies("oreo")

# puts st_nick.age

# p st_nick.ranking 

# puts st_nick.gender

p st_nick.age

p st_nick.celebrate_birthday

p st_nick.age 

print st_nick.gender 

st_nick.gender = "girl"

print st_nick.gender 

print st_nick.ranking 

st_nick.get_mad_at((st_nick.ranking), "Rudolph")

print st_nick.ranking 

# santas = []

# santas << Santa.new("man", "white")
# santas << Santa.new("man-ish", "white-ish")
# santas << Santa.new("boy", "hispanic")

# santas.each do |about|
# 	puts about.gender
# 	puts about.ethnicity
	
# end









