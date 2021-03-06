Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
  # CREATE, READ, UPDATE, DELETE
  # read all restaurants
  # get '/restaurants', to: 'restaurants#index'
  # # read one restaurant
  # get '/restaurants/:id', to: 'restaurants#show'
  # # create a restaurant
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants/',  to: 'restaurants#create'
  # # update a restaurant
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'
  # # delete a restaurant
  # delete '/restauants/:id', to: 'restaurants#destroy'
  root to: 'restaurants#index'
  resources :restaurants
end
