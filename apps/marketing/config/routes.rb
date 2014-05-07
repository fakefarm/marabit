Marketing::Engine.routes.draw do
  root to: 'home#index'
  get '/marketing' => 'home#index'
end
