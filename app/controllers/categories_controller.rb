class CategoriesController < ApplicationController
    def index 
        categories = Category.all
        render json: categories
    end

    def create 
        # byebug
        category = Category.create(category_params)
        categories = Category.all
        render json: categories

    end

    private 
    def category_params
        params.require(:category).permit(:name)
    end
end
