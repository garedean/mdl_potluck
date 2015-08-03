Rails.application.routes.draw do
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
end
