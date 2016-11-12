class Santa
	attr_reader :gender, :ethnicity, :reindeer_ranking, :age 
	attr_accessor :gender, :ethnicity, :age

	def initialize(age, gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = age 
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good type of #{cookie_type}!"
	end

	# def ranking
	# 	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	# end

	# Setter methods
	def celebrate_birthday	
		@age = @age + 1
	end

	def get_mad_at(deer_name)
	@reindeer_ranking.delete_at(@reindeer_ranking.index(deer_name))
	@reindeer_ranking << deer_name
	@reindeer_ranking 
	end

	def gender=(new_gender)
		@gender = new_gender
	end
end

#st_nick = Santa.new("boy", "hispanic", @age)

gender_arr = ["male", "female", "gender fluid", "neutral gendered", "boy-ish" ]
	
age_arr = (1..140).to_a 
	
ethnicity_arr = ["white", "black", "hispanic", "asian", "middle eastern"]

puts "How many Santa's would you like to make?"
number = gets.chomp.to_i 

num_of_santa = 0 

until num_of_santa == number
	santa = Santa.new(age_arr.sample, gender_arr.sample, ethnicity_arr.sample)
	puts "This santa is a #{santa.age} year old #{santa.ethnicity} and #{santa.gender}."
	num_of_santa += 1 
end 


# p st_nick.age

# p st_nick.celebrate_birthday

# p st_nick.age 

# print st_nick.gender 

# st_nick.gender = "girl"

# print st_nick.gender 

# st_nick.get_mad_at("Rudolph")

# print st_nick.reindeer_ranking













