Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/prepare' => 'home#prepare'

  resources :ingredients

  resources :categories do
    resources :ingredients
  end
end
