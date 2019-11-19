class ReviewController < ApplicationController

  def new
    @statue = Statue.find(params[:statue_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @statue = Statue.find(params[:statue_id])
  end

  def index
    @reviews = Review.all(params[:statue_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end


end
