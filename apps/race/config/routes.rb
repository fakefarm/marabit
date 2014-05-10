Race::Engine.routes.draw do
  resources :rushes
  get 'races' => 'rushes#index'
end
