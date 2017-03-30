Rails.application.routes.draw do
  root 'static_pages#home'
  resources :bookings, only: [:new, :create, :show]
  resources :flights
  resources :searches
end
