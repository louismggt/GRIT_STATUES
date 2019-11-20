class RentalsController < ApplicationController
  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
    @statue = Statue.find(params[:statue_id])
  end

  def index
    @rentals = Rental.all
  end

  def create
    @rental        = Rental.new(rentals_params)
    @statue        = Statue.find(params[:statue_id])
    @rental.user   = current_user
    @rental.statue = @statue
    if @rental.save
      # redirect_to profile_path(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to user_path
  end

  private

  def rentals_params
    params.require(:rental).permit(:start_date, :end_date, :description)
  end
end
