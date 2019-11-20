class RentalsController < ApplicationController
  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def index
    @rentals = Rental.all
  end

  def create
    @rental = Rental.new(rentals_params)
    @user = current_user
    @statue = Statue.find(params[:statue_id])

    @rental.user = @user
    @rental.statue = @statue

    if @rental.save
      redirect_to user_path(@user)
    else render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to user_path
  end

  private

  def rentals_params
    params.require(:rental).permit(:start_date, :end_date, :statue_id, :user_id)
  end
end
