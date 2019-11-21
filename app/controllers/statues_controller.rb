class StatuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def show
    @statue = Statue.find(params[:id])
    @markers = [{
      lat: @statue.latitude,
      lng: @statue.longitude,
      image_url: helpers.asset_url('pin.png')
    }]
  end

  def new
    @statue = Statue.new
  end

  def index
    if params[:search].present?
      @statues = Statue.where("name || location || category ILIKE ?", "%#{params[:search]}%")
    else
      @statues = Statue.geocoded
    end
    # returns statues with coordinates
    @markers = @statues.map do |statue|
      {
        lat: statue.latitude,
        lng: statue.longitude,
        image_url: helpers.asset_url('pin2.png')
      }
    end
  end

  def create
    @statue = Statue.new(statues_params)
    @statue.user = current_user
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
    if @statue.destroy
      redirect_to statues_path
    else
      render :edit
    end
  end

  # TENTATIVE DE PIERRE DE FAIRE FONCTIONNER LA SEARCHBAR.

  def search
    if params[:search].blank?
      redirect_to(statues_path, alert: "Empty field!") && return

    else

    @parameter = params[:id].downcase
    @results = Statues.all.where("lower(name) LIKE :search", search: @parameter)
    end
  end

  #--------------------------------------------------------------------------

  private

  def statues_params
    params.require(:statue).permit(:name, :category, :length, :width, :height, :surface, :location, :material, :description, :price, :photo, :photo_cache)
  end
end
