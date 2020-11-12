Rails.application.routes.draw do
  resources :bookings
  resources :travel_informations
  resources :transport_companies
  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
