Rails.application.routes.draw do


  resources :bookings, only: [:new, :create, :show]
  resources :flights
end
