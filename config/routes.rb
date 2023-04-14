Rails.application.routes.draw do
  resources :teams
  resources :division_users
  resources :users
  resources :bets
  resources :clashes
  resources :divisions
  resources :matches
  resources :rounds
  resources :championships
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
