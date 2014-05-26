Race::Engine.routes.draw do
  root :to => 'rushes#index'
  get 'users' => 'users#index'
  get 'new-race' => 'rushes#new'
  resources :rushes, only: [:new, :create]
end
