class TodosController < ApplicationController
    def create 
        todo = Todo.create(todo_params)
        categories = Category.all
        render json: categories
    end

    def destroy
        todo = Todo.find(params[:id].to_i)
        todo.destroy
        categories = Category.all
        render json: categories
    end

    def update
        todo = Todo.find(params[:id].to_i)
        
        todo.completed = !todo.completed
        # byebug
        todo.save
        categories = Category.all
        render json: categories
    end

    private 
    def todo_params
        params.require(:todo).permit(:text, :category_id)
    end
end
