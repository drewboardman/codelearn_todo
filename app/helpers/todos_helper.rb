module TodosHelper
	def todo_params
		params.require(:todo).permit(:todo_item)
	end
end
