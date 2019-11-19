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
    if @statue.save
      redirect_to statue_path(@statue)
    else
      render :new
    end
  end

  def edit
    @statue = Statue.find(params[:id])
  end

  def update
    @statue = Statue.find(params[:id])
    @statue.update(statues_params)

    if @statue.save
      redirect_to statue_path(@statue)
    else
      render :new
    end
  end

  def destroy
    @statue = Statue.find(params[:id])
    @statue.destroy
  end

  private

  def statues_params
    params.require(:statue).permit(:name, :description, :surface, :price, :category, :photo)
  end

end
