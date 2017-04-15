class TodoList
	def initialize(arr)
	  @arr = arr
	end

  def get_items
  	puts @arr  
  end



	def add_item(str)
	end

	def delete_item(str)
	end

	def get_item(n)
	end
end

grocery_list = TodoList.new(["do the dishes", "mow the lawn"])
grocery_list.get_items