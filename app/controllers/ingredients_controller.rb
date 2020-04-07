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
    @ingredient = Ingredient.new(ingred_params)
    if @ingredient.save
      redirect_to ingredients_path(@ingredient)
    else
      render :new
    end
  end

  def ingred_params
    params.require(:ingredient).permit(:name)
  end
end
