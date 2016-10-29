# Gather Employee Data

# Ask employee for name
puts "What is your name?"
employee_name = gets.chomp

# Ask employee how old they are and convert to an integer
puts "How old are you?"
empolyee_age = gets.chomp.to_i

# Ask employee what year they were born and convert to an integer
puts "What year were you born?"
birth_year = gets.chomp.to_i

# Ask employee if they will want garlic bread 
puts "Our company cafeteria servers garlic bread. Should we order some for you?"
wants_garlic_bread = gets.chomp

# Ask employee if they will want to enroll in company health insurance
puts "Would you like to enroll in the company's health insurance?"
wants_health_insurance = gets.chomp