class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @bottle = Bottle.find(params[:bottle_id])
    @review = Review.new
  end

  def create
    @bottle = Bottle.find(params[:bottle_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to bottle_path(@bottle)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :bottle_id)
  end
end
