Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources "places"
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get '/places' => 'places#index'
  get '/places/new' => 'places#new', as: "newplace"
  post '/places' => 'places#create'
  get '/places/:id' => 'places#show', as: "placeshow"
  get '/entries/new/:place_id' => 'entries#new', as: 'new_entry'
  post '/entries/:place_id' => 'entries#create', as: 'create_entry'
end
