Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/home/prepare' => 'home#prepare'
  get '/home/admin' => 'home#admin'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'
  get '/ingredients/unarranged', to: 'ingredients#unarranged'

  post '/ingredients/:id/add_to_cart', to: 'ingredients#add_to_cart', as: "add_to_cart"
  post '/ingredients/:id/remove_from_cart', to: 'ingredients#remove_from_cart', as: "remove_from_cart"



  resources :ingredients
  resources :locations
  resource :cart

  resources :categories do
    resources :ingredients
  end

  resources :locations do
    resources :ingredients
  end
end
