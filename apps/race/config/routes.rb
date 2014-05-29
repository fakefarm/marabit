Race::Engine.routes.draw do
  root :to => 'rushes#index'
  get 'new-race' => 'rushes#new'
  get 'users' => 'users#index'
  get 'sessions' => 'sessions#index'
  post 'sessions' => 'sessions#create'
  resources :rushes, only: [:index, :new, :create]
  resources :numeric_updates
end
