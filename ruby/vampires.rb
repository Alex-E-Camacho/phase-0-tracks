# Gather Employee Data

# Ask employee for name
puts "What is your name?"
employee_name = gets.chomp

# Ask employee how old they are and convert to an integer
puts "How old are you?"
employee_age = gets.chomp.to_i

# Ask employee what year they were born and convert to an integer
puts "What year were you born?"
birth_year = gets.chomp.to_i

# Ask employee if they will want garlic bread 
puts "Our company cafeteria servers garlic bread. Should we order some for you? (y or n)"
garlic_bread = gets.chomp.downcase

# Ask employee if they will want to enroll in company health insurance
puts "Would you like to enroll in the company's health insurance? (y or n)"
health_insurance = gets.chomp.downcase


# Did the employee get their age right?

# Get the current year so that we can subtract from it
# Create a variable for the current year
current_year = Time.now.year

# Subtract the year they gave from the current year to get how old they should be and store
# that in a new variable
age_check = current_year - birth_year

# Match the age_check to the employee_age to see if they match up
	if employee_age == age_check
		correct_age = true
	elsif employee_age == age_check - 1
		correct_age = true
	else
		correct_age = false
	end

# Convert garlic_bread and health_insurance into booleans

# Turn garlic_bread"yes" responses to true and "no" responses to false 

# If garlic_bread response is "y", then will_eat_garlic is true
# or else will_eat_garlic is false

	if garlic_bread == "y"
		will_eat_garlic = true
	elsif garlic_bread == "n" 
		will_eat_garlic = false
	end

# If health_insurance is equal to "y", will_get_insurance is true
# or else will_get_insurance is false

	if health_insurance == "y"
		will_get_insurance = true
	elsif health_insurance == "n"
		will_get_insurance = false
	end


							
