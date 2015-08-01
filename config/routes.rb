Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/admin' => 'home#admin'

  get '/ingredients/expiring', to: 'ingredients#expiring_soon'

  resources :ingredients

  resources :categories do
    resources :ingredients
  end

  resources :locations do
    resources :ingredients
  end
end
