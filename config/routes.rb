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


  #Defines friendly routes (brazil)
  get 'times' => 'teams#index'
  get 'apostas' => 'bets#index'
  get 'divisoes' => 'divisions#index'
  get 'rodadas' => 'rounds#index'
  get 'campeonatos' => 'championships#index'
  get 'confrontos' => 'clashes#index'
  get 'competidor' => 'users#index'
   

  # Defines the root path route ("/")
  root "home#index"
end
