class TodoList 	
	  attr_accessor :get_items

	def initialize(get_items)
		@get_items = ["do the dishes", "mow the lawn"]	
	end 	


	def add_item(n) 		
		@get_items << n 
	end  	

	def delete_item(n)
		@get_items.delete(n) 	
	end  

	def get_item(n)
		@get_items[n]
	end

end

