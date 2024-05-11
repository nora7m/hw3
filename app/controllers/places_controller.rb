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
    @place = Place.new (place_params)
    if @place.save
      @place = Place.all
    else
      @place = Place.new
    end
  end

end

