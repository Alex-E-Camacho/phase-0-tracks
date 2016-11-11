class TodoList 	
	  attr_accessor :get_items

	def initialize(get_items)
		@get_items = ["do the dishes", "mow the lawn"]	
	end 	


	def add_item(n) 		
		@get_items << n 
	end  	

	# def delete_items 	
	# end  
end
