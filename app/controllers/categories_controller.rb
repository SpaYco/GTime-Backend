class CategoriesController < ApplicationController
    skip_before_action :verify_authenticity_token
    

 def index
    @categories = Category.all
    render json: @categories
 end

 def show
    @category = Category.find(params[:id])
    render json: @category
 end

 def create
    @category = Category.new(category_params)
      if @category.save
        render json: @category, status: 200, location: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
  
end
