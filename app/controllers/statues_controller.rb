class StatuesController < ApplicationController
  def show
    @statue = Statue.find(params[:id])
  end

  def new
    @statue = Statue.new
  end

  def index
    @statues = Statue.all
  end

  def create
    @statue = Statue.new(statues_params)

  end

  private

  def statues_params
    params.require(:statue).permit(:name, :description, :length, :width, :height, :weight, :price, :category, :photo)
  end
end
