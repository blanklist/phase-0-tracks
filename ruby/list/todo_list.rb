class TodoList
	def initialize(arr)
	  @arr = arr
	end

  def get_items
  	p @arr  
  end

	def add_item(str)
	  @arr << str
	end

	def delete_item(str)
	  @arr.delete(str)
	end

	def get_item(n)
		p @arr[n]
	end
end
