Rails.application.routes.draw do

  root to: 'restaurants#index'
  # Show All Restaurants
  get '/restaurants', to: 'restaurants#index', as: :restaurants

  # # Create New Restaurant
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'

  # Show Restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # Review Restaurant
  # get 'restaurants/:id/review/new', to: 'restaurants#review', as: :review_restaurant
  # patch 'restaurants/:id/reviews', to: 'restaurants#update'

end
