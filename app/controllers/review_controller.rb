class ReviewController < ApplicationController

  def new
    @review = Review.new
  end


end
