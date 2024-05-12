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
      redirect_to "/places"  # Redirect to the list of all places
    else
      redirect_to "/places/new"  # Redirect back to the new form
    end
  end

end

