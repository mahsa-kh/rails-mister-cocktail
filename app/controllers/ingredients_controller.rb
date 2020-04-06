class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    @review = Review.new
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    # @ingredient_name = Ingredient.where(name: ingred_params)
    # p "********** IUngre:  #{params[:name]}"
    # if @ingredient_name == params[:name]
    #   @error = "This ingredient already exists"
    #   redirect_to new_ingredient_path
    # else
      @ingredient = Ingredient.create(ingred_params)
      redirect_to ingredients_path(@ingredient)
    # end
  end

  def ingred_params
    params.require(:ingredient).permit(:name)
  end
end
