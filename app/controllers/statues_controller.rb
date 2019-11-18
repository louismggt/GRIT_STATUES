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
    @statue = Statue.new
  end

  private

  def statues_params
    params.require(:statue).permit(:name, :description, :surface, :price, :category, :photo)
  end

end
