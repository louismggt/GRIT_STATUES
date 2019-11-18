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



end
