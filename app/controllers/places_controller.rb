class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find (params["id"])
   
  end

  def new
    @place = Place.new
   
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      puts "Place was successfully created."
      redirect_to places_path
    else
      puts "Failed to create place."
      redirect_to new_place_path
    end
  end

  def place_params
    params.require(:place).permit(:name)
  end
  
end


