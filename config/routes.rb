Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/prepare' => 'home#prepare'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'

  resources :ingredients
  resources :locations

  resources :categories do
    resources :ingredients
  end

  resources :ingredients do
    resources :locations
  end
end
