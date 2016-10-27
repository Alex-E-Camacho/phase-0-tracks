puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume? (1 to 10)"
volume = gets.chomp.to_i
puts "What is hamster's fur color?"
fur_color = gets.chomp
puts "Is it a good candidate for adoption? (yes or no)"
can_adoption = gets.chomp
   
 if can_adoption == "yes"
   can_adoption = true
 else
   can_adoption = false
 end
puts "What is hamster's estimate age?"
 age = gets.chomp
 if age.empty? 
    age = nil
 else
    age = age.to_f
 end
if can_adoption == true
  puts "Hamster #{name} is good for adoption! 
  - age: #{age} 
  - volume level: #{volume}
  - fur color: #{fur_color}"
else puts "Hamster #{name} is not adoptable
  - age: #{age} 
  - volume level: #{volume}
  - fur color: #{fur_color}"
end