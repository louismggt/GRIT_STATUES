class StatuesController < ApplicationController
  def show
    @statue = Statue.find(params[:id])
    @markers = { lat: @statue.latitude,lng: @statue.longitude }
  end

  def new
    @statue = Statue.new
  end

  def index
    @statues = Statue.all

  end

  def create
    @statue = Statue.new(statues_params)
    @statue.user = current_user
    if @statue.save!
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
    if @statue.destroy
      redirect_to statues_path
    else
      render :edit
    end
  end

  private

  def statues_params
    params.require(:statue).permit(:name, :category, :length, :width, :height, :surface, :location, :material, :description, :price, :photo, :photo_cache)
  end
end
