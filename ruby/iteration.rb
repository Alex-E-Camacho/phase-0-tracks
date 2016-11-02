food = ["pizza", "sandwich", "ice cream"]

meals = {
	"morning" => "breakfast",
	"afternoon" => "lunch",
	"evening" => "dinner" 
}

food.each {|i| print i + " \n"}

meals.each {|i, j| print "#{i}  is #{j}.\n"}

food.map! { |e| e + " is yummy." }

food.each {|i| print i + " \n"}
