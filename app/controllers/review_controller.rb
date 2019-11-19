class ReviewController < ApplicationController

  def index
    @reviews = Review.all(params[:statue_id])
  end

  def new
    @statue = Statue.find(params[:statue_id])
    @review = Review.new
  end

  def create
    @statue = Statue.find(params[:statue_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to statue_reviews_path(@statue)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    if @review.save
      redirect_to statue_reviews_path(@statue)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
