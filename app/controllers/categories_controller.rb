class CategoriesController < ApplicationController

    before_action :find_category, only: [:show]

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            redirect_to category_path(@category)
        else
            render :new
        end
    end

    def show; end

    private

    def category_params
        params.require(:category).permit(:title, :sport_id)
    end

    def find_category
        @category = Category.find(params[:id])
    end

end
