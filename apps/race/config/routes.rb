Race::Engine.routes.draw do
  get 'races' => 'rushes#index'
  get 'new-race' => 'rushes#new'
  resources :rushes
end
