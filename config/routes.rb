Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "flights#index"
  get '/flights', to: 'flights#index'
  get '/bookings/new', to: 'bookings#new'
  get '/bookings/:id', to: 'bookings#show', as: :booking
  post '/bookings', to: 'bookings#create'
end
