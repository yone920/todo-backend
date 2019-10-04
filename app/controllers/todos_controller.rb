class TodosController < ApplicationController
    def create 
        todo = Todo.create(todo_params)
        categories = Category.all
        render json: categories
    end

    private 
    def todo_params
        params.require(:todo).permit(:text, :category_id)
    end
end
