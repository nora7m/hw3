class EntriesController < ApplicationController
  def new
    @place = Place.find(params["place_id"]) 
    @entry = Entry.new  
  end

  def create
    @place = Place.find(params["place_id"]) 
    @entry = Entry.new(entry_params)  
    @entry.place_id = @place.id  

    if @entry.save
      puts "Entry added successfully." 
      redirect_to place_path(@place)  
    else
      puts "Failed to add entry."    
      redirect_to new_place_entry_path(@place)  
    end
  end
end