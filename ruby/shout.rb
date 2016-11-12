module Shout
	def yell_angrily(words)
		words + "!!!" + ":("
	end

	def yell_happily(words)
		words + "Yay" + "!!!"
	end
end

# puts Shout.yell_happily("This works.")

# puts Shout.yell_angrily("Trump won")

class Teacher
	include Shout
end

class Drill_Instructor
	include Shout
end

Mrs_Smith = Teacher.new

Sgt_York = Drill_Instructor.new

puts Mrs_Smith.yell_happily("Everyone got an A on the test.")

puts Sgt_York.yell_angrily("Drop and give me one hundred push ups")