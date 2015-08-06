Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}

  root to: 'stores#show'

  get '/prepare' => 'static_pages#prepare'
  get '/admin' => 'static_pages#admin'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'
  get '/ingredients/unarranged', to: 'ingredients#unarranged'

  resources :ingredients
  resources :locations
  resource :cart
  resources :categories
  resource :store, only: [:show]

  namespace :store do
    resources :categories do
      resources :ingredients

      member do
        get 'review'
      end
    end

    resources :ingredients do
      resources :locations
      
      member do
        post 'add_with_location'
      end
    end
  end

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
