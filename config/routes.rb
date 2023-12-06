Rails.application.routes.draw do
  resources :reservations
  resources :bikes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'display_bikes', to: "bikes#display_bikes"

  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'

  post '/reserve', to: "reservations#create_reservation"

  # Defines the root path route ("/")
  # root "posts#index"
end
