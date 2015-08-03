Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/home/prepare' => 'home#prepare'
  get '/home/admin' => 'home#admin'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'
  get '/ingredients/unarranged', to: 'ingredients#unarranged'


  resources :ingredients
  resources :locations
  resource :cart

  resources :categories do
    resources :ingredients
  end

  resources :locations do
    resources :ingredients
  end

  # cart
  # **************************

  # add item
  post '/ingredients/:id/add_to_cart', to: 'ingredients#add_to_cart', as: "add_to_cart"
  # remove item
  post '/ingredients/:id/remove_from_cart', to: 'ingredients#remove_from_cart', as: "remove_from_cart"
  # use all items
  post '/cart/use_all', to: 'carts#use_all_items', as: "use_all_items"
  # empty all items
  post '/cart/empty',   to: 'carts#empty_cart',     as: "empty_cart"
end
