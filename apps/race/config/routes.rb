Race::Engine.routes.draw do
  resources :rushes, path: 'races', as: 'races'
  get 'race' => 'rushes#index'
end
