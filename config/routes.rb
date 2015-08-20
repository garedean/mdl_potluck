Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}, skip: :registration

  root to: 'static_pages#store'

  get '/prepare' => 'static_pages#prepare'
  get '/store'   => 'static_pages#store'
  get '/admin' => 'static_pages#admin_main'
  get '/cartsummary' => 'admin#cart_summaries'
  get '/inventorysummary' => 'admin#inventory_summaries'
  get '/expiredsummary' => 'admin#expired_summary'

  get '/recentlylogged' => 'ingredients#recentlylogged'
  get '/ingredients/expiring', to: 'ingredients#expiring_soon'
  get '/ingredients/unarranged', to: 'ingredients#unarranged'

  resources :locations, :categories
  resource :cart
  resource :store, only: [:show]

  namespace :store do
    resources :categories do

      member do
        get 'review'
        get 'choose-expiration'
      end

      resources :locations do
        member do
          get 'choose-expiration'
        end
      end

      resources :ingredients
    end
  end

  namespace :relocate do
    resources :ingredients do
      resources :locations

      member do
        post 'change-location'
        post 'save-location'
      end
    end
  end

  resources :ingredients do
    resources :locations

    collection do
      get 'lookup'
      get 'find_by_id'
      get 'lookup_item'
      get 'find_by_item_id'
    end

    member do
      post 'add_with_location'
      post 'save-location'
      post 'add_another_same_location'
    end
  end

  namespace :store do
    resources :ingredients do
      resources :locations

      member do
        post 'add_with_location'
        post 'save-location'
      end
    end
  end

  namespace :admin do
    resources :locations
    resources :categories
    resources :users
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
