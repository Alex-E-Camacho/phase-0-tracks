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
puts "Our company cafeteria servers garlic bread. Should we order some for you?"
wants_garlic_bread = gets.chomp

# Ask employee if they will want to enroll in company health insurance
puts "Would you like to enroll in the company's health insurance?"
wants_health_insurance = gets.chomp


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


