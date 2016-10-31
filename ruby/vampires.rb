# This is a semi-working product with comments at the end of where I had trouble.

question_cycles = 0
vampire_verdict = nil
# Ask how many employees are being processed, convert to integer
puts "How many employees are being processed?"
num_of_employees = gets.chomp.to_i

until question_cycles == num_of_employees

	# Gather Employee Data

	# Ask employee for name
	puts "What is your name?"
	employee_name = gets.chomp.downcase

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

	# Boolean variables:
	# correct_age
	# will_eat_garlic
	# will_get_insurance

	# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, 
	# the result is “Probably not a vampire.”




	 case 
	 	# READ: I put the employee_name conditional at the top because after over a day of trial and error I 
	 	# couldn't figure out how to make it work while being at the bottom of the conditional
	 	# list. 
		when employee_name == "drake cula" || "tu fang" 
			vampire_verdict = "Definitely a vampire."

		when correct_age && (will_eat_garlic || will_get_insurance)
			vampire_verdict = "Probably not a vampire."
				
		when correct_age == false && (will_eat_garlic == false || will_get_insurance == false)
			case
				when will_eat_garlic == false && will_get_insurance == false
					vampire_verdict = "Almost certainly a vampire"
				else vampire_verdict = "Probably a vampire"
			 	
			 end			
		# when employee_name == "drake cula" || "tu fang"
		# 	vampire_verdict = "Definitely a vampire."
	 	else vampire_verdict = "Results inconclusive."
	end

	puts vampire_verdict
	

	 
	
question_cycles += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

=begin
I was able to create the if/elsif code for the allergies questions. It stopped when 'done' was entered or stopped and returned "Probably a vampire"
when 'sunshine' was entered. However, I couldn't figure out where exactly to put it. Also, I'm guessing that having it return "Probably a vampire"	
from it's own code rather than it being the "Probably a vampire" from the conditional statements below is the wrong approach. I was not able to
understand how to link it to the conditional statements in the case statements. I'm on day 3 of trying to get this .rb file to work properly
so I feel this is a good point to stop and hopefully get feedback on where I've gone wrong. Below is the code I wrote for the allergies.

allergies = ""

until allergies == "done"
	puts "Please name, if any, allergies you may have. Type 'done' when you are finished."
	allergies = gets.chomp.downcase
	if allergies == "sunshine"
		allergies = "done"
		puts "Probably a vampire"
	end
end

=end
							
