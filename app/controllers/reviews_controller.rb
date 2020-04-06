class ReviewsController < ApplicationController
  #  def show
  #   @ingredient = Ingredient.find(params[:id])
  #   @review = Review.new
  # end
  def new
    @review = Review.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save
    redirect_to ingredients_path(@review)
    # end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end


