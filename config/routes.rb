Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/prepare' => 'home#prepare'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'
  get '/home/cart', to: 'home#cart'
  get '/ingredients/unarranged', to: 'ingredients#unarranged'

  resources :ingredients
  resources :locations

  resources :categories do
    resources :ingredients
  end

  resources :locations do
    resources :ingredients 
  end

end